//
//  PDFViewController.swift
//  pest_control
//
//  Created by Muhammad Haroon Iqbal on 17/02/2025.
//

import UIKit
import WebKit

class PDFViewController: UIViewController {
    
    @IBOutlet weak var webView: WKWebView!
    
    let htmlString: String? = """
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Lazer Pest Control - Treatment Report</title>
        <style>
            * {
                box-sizing: border-box;
                font-family: Arial, sans-serif;
                margin: 0;
                padding: 0;
            }
            
            body {
                font-size: 14px;
                line-height: 1.4;
                max-width: 1200px;
                margin: 0 auto;
                padding: 20px;
            }
            
            .logo {
                display: flex;
                align-items: center;
                margin-bottom: 20px;
            }
            
            .logo h1 {
                font-size: 48px;
                font-weight: bold;
                margin-right: 10px;
            }
            
            .logo-text {
                position: relative;
            }
            
            .bolt {
                position: absolute;
                top: 10px;
                right: 0;
                color: red;
                font-size: 60px;
                transform: rotate(30deg);
                transform-origin: center;
                font-weight: bold;
                line-height: 0.7;
            }
            
            .subtitle {
                color: red;
                font-size: 16px;
                margin-top: -10px;
                margin-left: 110px;
            }
            
            .header {
                display: flex;
                justify-content: space-between;
                align-items: flex-start;
                margin-bottom: 20px;
            }
            
            .title {
                text-align: right;
                font-size: 28px;
                font-weight: bold;
                margin-bottom: 15px;
            }
            
            .form-section {
                border: 1px solid #000;
                padding: 10px;
                margin-bottom: 15px;
            }
            
            .form-section-header {
                background-color: #fff;
                color: red;
                font-weight: bold;
                text-align: center;
                margin-bottom: 10px;
                font-size: 16px;
            }
            
            .form-row {
                display: flex;
                margin-bottom: 8px;
            }
            
            .form-check {
                display: flex;
                align-items: center;
                margin-right: 10px;
            }
            
            input[type="checkbox"] {
                margin-right: 5px;
                width: 15px;
                height: 15px;
                border: 1px solid #000;
            }
            
            input[type="text"], input[type="email"], input[type="tel"], input[type="date"], input[type="time"] {
                border: none;
                border-bottom: 1px solid #000;
                padding: 3px 0;
                width: 100%;
                margin-bottom: 5px;
            }
            
            label {
                margin-right: 5px;
            }
            
            .form-column {
                flex: 1;
                padding: 0 5px;
            }
            
            .form-group {
                margin-bottom: 10px;
            }
            
            table {
                width: 100%;
                border-collapse: collapse;
                margin-bottom: 10px;
            }
            
            table, th, td {
                border: 1px solid #000;
            }
            
            th, td {
                padding: 4px;
                text-align: left;
            }
            
            th {
                background-color: #f2f2f2;
            }
            
            .chemical-row {
                display: flex;
                justify-content: space-between;
                margin-bottom: 5px;
                align-items: center;
            }
            
            .chemical-name {
                flex: 2;
            }
            
            .units-box {
                border: 1px solid #000;
                width: 50px;
                height: 20px;
                flex: 1;
                text-align: center;
            }
            
            .signature-row {
                display: flex;
                justify-content: space-between;
                margin-top: 20px;
            }
            
            .signature-column {
                flex: 1;
            }
            
            .footer {
                display: flex;
                justify-content: space-between;
                margin-top: 20px;
                font-weight: bold;
            }
            
            .red-text {
                color: red;
            }
            
            .text-area {
                width: 100%;
                min-height: 120px;
                border: none;
                border-bottom: 1px solid #000;
                margin-bottom: 10px;
                padding: 5px 0;
                resize: vertical;
            }
            
            .bait-plan {
                border: 1px solid #000;
                margin: 20px 0;
                padding: 10px;
                min-height: 400px;
            }
            
            .bait-plan h2 {
                text-align: center;
                margin-bottom: 20px;
                font-size: 20px;
            }
            
            .precautions {
                margin: 20px 0;
            }
            
            .precautions h3 {
                margin-bottom: 10px;
            }
            
            .precautions p {
                margin-bottom: 5px;
            }
            
            .disclaimer {
                margin: 20px 0;
            }
            
            .disclaimer h2 {
                text-align: center;
                margin-bottom: 10px;
                font-size: 20px;
            }
            
            .bold {
                font-weight: bold;
            }
            
            .contract-details {
                font-weight: bold;
                text-align: center;
                margin-bottom: 10px;
                color: red;
            }
            
            /* Responsive adjustments */
            @media (max-width: 768px) {
                .header {
                    flex-direction: column;
                }
                
                .title {
                    text-align: center;
                    margin-top: 15px;
                }
                
                .form-row {
                    flex-direction: column;
                }
                
                .form-column {
                    width: 100%;
                    margin-bottom: 10px;
                }
                
                .signature-row {
                    flex-direction: column;
                }
                
                .signature-column {
                    margin-bottom: 15px;
                }
                
                .footer {
                    flex-direction: column;
                    text-align: center;
                }
                
                .footer div {
                    margin-bottom: 10px;
                }
            }
            
            .health-safety-table td {
                padding: 4px;
                font-size: 13px;
            }
        </style>
    </head>
    <body>
        <div class="page">
            <!-- Header with Logo -->
            <div class="header">
                <div class="logo">
                    <div class="logo-text">
                        <h1>LAZER</h1>
                        <div class="bolt">Z</div>
                    </div>
                    <div class="subtitle">PEST CONTROL</div>
                </div>
                <div class="title">TREATMENT REPORT</div>
            </div>
            
            <!-- Main Form -->
            <div class="form-section">
                <div class="contract-details">CONTRACT DETAILS OF BUSINESS / OCCUPIER:</div>
                <div class="form-group">
                    <label for="name">Name:</label>
                    <input type="text" id="name" name="name">
                </div>
                <div class="form-group">
                    <label for="telephone">Telephone:</label>
                    <input type="tel" id="telephone" name="telephone">
                </div>
                <div class="form-group">
                    <label for="email">Email:</label>
                    <input type="email" id="email" name="email">
                </div>
                <div class="form-group">
                    <label for="address">Address for treatment:</label>
                    <input type="text" id="address" name="address">
                    <input type="text" id="address2" name="address2">
                </div>
                <div class="form-group">
                    <label for="postcode">Postcode</label>
                    <input type="text" id="postcode" name="postcode">
                </div>
                <table>
                    <tr>
                        <td>Time of treatment</td>
                        <td>Date</td>
                    </tr>
                    <tr>
                        <td><input type="time" id="treatment_time" name="treatment_time"></td>
                        <td><input type="date" id="treatment_date" name="treatment_date"></td>
                    </tr>
                </table>
            </div>
            
            <div class="form-row">
                <div class="form-column">
                    <div class="form-check">
                        <input type="checkbox" id="routine" name="visit_type" value="routine">
                        <label for="routine">Routine</label>
                    </div>
                    <div class="form-check">
                        <input type="checkbox" id="follow_up" name="visit_type" value="follow_up">
                        <label for="follow_up">Follow Up</label>
                    </div>
                    <div class="form-check">
                        <input type="checkbox" id="call_out" name="visit_type" value="call_out">
                        <label for="call_out">Call Out</label>
                    </div>
                </div>
                <div class="form-column">
                    <div class="form-group">
                        <label for="report_no">Report No:</label>
                        <input type="text" id="report_no" name="report_no">
                    </div>
                    <div class="form-group">
                        <label for="zone">Zone:</label>
                        <input type="text" id="zone" name="zone">
                    </div>
                </div>
            </div>
            
            <div class="form-group">
                <label for="landlord">Name of Landlord / Agency:</label>
                <input type="text" id="landlord" name="landlord">
            </div>
            
            <div class="form-group">
                <label for="property_size">Size of Property:</label>
                <input type="text" id="property_size" name="property_size">
            </div>
            
            <div class="form-row">
                <div class="form-column">
                    <label for="agreed_price">Agreed Price</label>
                    <input type="text" id="agreed_price" name="agreed_price">
                </div>
                <div class="form-column">
                    <div class="form-check">
                        <input type="checkbox" id="received" name="received">
                        <label for="received">Received</label>
                    </div>
                </div>
            </div>
            
            <div class="form-group">
                <label for="agency_pay">Agency or Landlord Will Pay:</label>
                <input type="text" id="agency_pay" name="agency_pay">
            </div>
            
            <div class="form-row">
                <div class="form-column">
                    <div class="form-section">
                        <div class="form-section-header">TYPES OF PEST</div>
                        <div class="form-row">
                            <div class="form-column">
                                <div class="form-check">
                                    <input type="checkbox" id="mice" name="pest_type" value="mice">
                                    <label for="mice">Mice</label>
                                </div>
                                <div class="form-check">
                                    <input type="checkbox" id="rats" name="pest_type" value="rats">
                                    <label for="rats">Rats</label>
                                </div>
                            </div>
                            <div class="form-column">
                                <div class="form-check">
                                    <input type="checkbox" id="ants" name="pest_type" value="ants">
                                    <label for="ants">Ants</label>
                                </div>
                                <div class="form-check">
                                    <input type="checkbox" id="cockroach" name="pest_type" value="cockroach">
                                    <label for="cockroach">Cockroach</label>
                                </div>
                            </div>
                            <div class="form-column">
                                <div class="form-check">
                                    <input type="checkbox" id="fleas" name="pest_type" value="fleas">
                                    <label for="fleas">Fleas</label>
                                </div>
                                <div class="form-check">
                                    <input type="checkbox" id="bedbug" name="pest_type" value="bedbug">
                                    <label for="bedbug">Bedbug</label>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="other_pest">Other:</label>
                            <input type="text" id="other_pest" name="other_pest">
                        </div>
                        
                        <div class="form-section-header">CHEMICAL USED:</div>
                        <div class="chemical-row">
                            <div class="chemical-name">Difenacoum</div>
                            <div>UNITS</div>
                            <div class="units-box"></div>
                        </div>
                        <div class="chemical-row">
                            <div class="chemical-name">Brodifacoum</div>
                            <div>UNITS</div>
                            <div class="units-box"></div>
                        </div>
                        <div class="chemical-row">
                            <div class="chemical-name">Bromadiolone</div>
                            <div>UNITS</div>
                            <div class="units-box"></div>
                        </div>
                        <div class="chemical-row">
                            <div class="chemical-name">Indoxacarb</div>
                            <div class="form-check">
                                <input type="checkbox" id="indoxacarb" name="chemical" value="indoxacarb">
                            </div>
                        </div>
                        <div class="chemical-row">
                            <div class="chemical-name">Bendiocarb</div>
                            <div class="form-check">
                                <input type="checkbox" id="bendiocarb" name="chemical" value="bendiocarb">
                            </div>
                        </div>
                        <div class="chemical-row">
                            <div class="chemical-name">Cypermethrin</div>
                            <div class="form-check">
                                <input type="checkbox" id="cypermethrin" name="chemical" value="cypermethrin">
                            </div>
                        </div>
                        <div class="chemical-row">
                            <div class="chemical-name">Alpha-cypermethrin + tetramethrin</div>
                            <div class="form-check">
                                <input type="checkbox" id="alpha_cypermethrin" name="chemical" value="alpha_cypermethrin">
                            </div>
                        </div>
                        <div class="chemical-row">
                            <div class="chemical-name">Fenprie Imidacloprid</div>
                            <div class="form-check">
                                <input type="checkbox" id="fenprie" name="chemical" value="fenprie">
                            </div>
                        </div>
                        <div class="chemical-row">
                            <div class="chemical-name">Other</div>
                            <div class="form-check">
                                <input type="checkbox" id="other_chemical" name="chemical" value="other">
                            </div>
                        </div>
                    </div>
                </div>
                
                <div class="form-column">
                    <div class="form-section">
                        <div class="form-section-header">HEALTH & SAFETY-ON SITE ASSESSMENT (MARK 'X')</div>
                        <table class="health-safety-table">
                            <tr>
                                <td>PRESENCE OF:</td>
                                <td>EVIDENCE OF INFESTATION:</td>
                            </tr>
                            <tr>
                                <td>CHILDREN</td>
                                <td>BODIES</td>
                            </tr>
                            <tr>
                                <td>EMPLOYEES</td>
                                <td>DROPPINGS</td>
                            </tr>
                            <tr>
                                <td>PUBLIC</td>
                                <td>GNAWING</td>
                            </tr>
                            <tr>
                                <td>PET ANIMALS</td>
                                <td>SMEAR/RUNWAYS</td>
                            </tr>
                            <tr>
                                <td>PROTECTED WILDLIFE</td>
                                <td>HOLE IN GROUND</td>
                            </tr>
                            <tr>
                                <td>OPEN FOOD</td>
                                <td>SIGHTING</td>
                            </tr>
                        </table>
                        
                        <p>It is a legal requirement that before any pesticide is used an assessment of risk is carried out and that measures are taken to prevent or control exposure.</p>
                        <p>The instructions on the label must be carried out.</p>
                        <p class="red-text bold">THE LABEL IS THE LAW</p>
                    </div>
                </div>
            </div>
            
            <div class="form-section">
                <div class="form-section-header">INSPECTION</div>
                <textarea class="text-area" id="inspection" name="inspection"></textarea>
            </div>
            
            <div class="form-section">
                <div class="form-section-header">RECOMMENDATION</div>
                <textarea class="text-area" id="recommendation" name="recommendation"></textarea>
                <p>Bait placement plan is on the back of page.</p>
            </div>
            
            <p>I/We authorise your company to enter and carry out all necessary work to treat the infestation. I agree to comply with all terms, conditions & safety information at back of the page. After treatment for rodents it takes 3-4 weeks to get control of pest. It is customer's responsibility to make an appointment for the removal of baits. It is possible that rodents may die in inaccessible places and during decomposition they may cause a smell. Company cannot be held responsible for any costs involved for any remedial activity to rectify the problem.</p>
            
            <div class="signature-row">
                <div class="signature-column">
                    <div class="form-group">
                        <label for="owner_signature">Owner/Tenant/Manager/Authorised Agent</label>
                        <input type="text" id="owner_signature" name="owner_signature">
                    </div>
                </div>
                <div class="signature-column">
                    <div class="form-group">
                        <label for="owner_name">Print Name</label>
                        <input type="text" id="owner_name" name="owner_name">
                    </div>
                </div>
            </div>
            
            <div class="signature-row">
                <div class="signature-column">
                    <div class="form-group">
                        <label for="company_signature">Signed on behalf of company</label>
                        <input type="text" id="company_signature" name="company_signature">
                    </div>
                </div>
                <div class="signature-column">
                    <div class="form-group">
                        <label for="company_name">Print Name</label>
                        <input type="text" id="company_name" name="company_name">
                    </div>
                </div>
            </div>
            
            <div class="footer">
                <div class="red-text">TEL: 0786 362 6289</div>
                <div class="red-text">WEB: WWW.LAZERPESTCONTROL.CO.UK</div>
            </div>
            
            <!-- Page 2 -->
            <div class="bait-plan">
                <h2>BAIT PLACEMENT PLAN</h2>
                <!-- Empty space for bait placement drawing -->
            </div>
            
            <div class="precautions">
                <h3>PRECAUTIONS FOR RODENT AND COCKROACH TREATMENT</h3>
                <p>*All food items must be covered in lidded boxes.</p>
                <p>*Contaminated food must be removed immediately.</p>
                <p>*Clean the infected area with disinfectant cleaner.</p>
                <p>*For businesses dealing with food stuff it is a legal requirement to stop selling food until infestation is cleared, As it may be an imminent risk to health under food laws in the UK.</p>
                <p>*Do not touch or change the position of baits as it causes health hazards</p>
                <p>*Do not wipe out the gel for at least 7 days</p>
                
                <h3>FOR SPLITS /EXPOSED BAITS</h3>
                <p>Wear protective gloves, place the bait in a plastic bag and keep it safely locked away.</p>
                
                <h3>FOR RAT OR MOUSE BODIES</h3>
                <p>Wear protective gloves, either dispose of by incineration or deep burying or place safely away from children and animals.</p>
                
                <h3>USE OF GLUE BOARD</h3>
                <p>There will be separate charge for providing glue boards, customer will be responsible to dispatch the trapped rodent quickly and humanly. This may be achieved by quick and positive dislocation of the mice. Drowning is not a acceptable method of dispatch.</p>
                
                <h3>AT THEIR TREATMENT VISITS OUR STAFF WILL:</h3>
                <p>Place baits in protected situation and other pesticide materials in appropriate situations.</p>
            </div>
            
            <div class="disclaimer">
                <h2>DISCLAIMER</h2>
                <p>The client accepts that some treated surface may be sprayed with approved insecticides. This may result in many areas becoming wet for a period of time and some surfaces may not become dry until after several hours. The client is advised in advance that whilst spraying does not normally cause damage to carpets, walls, picture frames, other household items or wooden/laminate flooring, it may be possible that some items are affected following spraying. If the client believes that the risk of any item becoming severely damaged is high then they must advise the pest control technician immediately. Such items must be removed, as necessary, by the client before the treatment commences.</p>
                <p>Lazer Pest Control LTD accepts no liability for such damage, if the client fails to notify LPCL of a recurrence of infestation for any treatments (unless specified in writing), after a period of 6 weeks from the first visit, then a new charge will be payable if the client requests further visits. It is also the client's responsibility to ensure that all proofing and hygiene requirements are satisfied after treatment as failure to do this might result in re-infestatiopn. If the client fails to follow the terms/guidelines above then LPCL accepts no responsibility for the treatment outcome.</p>
            </div>
        </div>
    </body>
    </html>
    """
    
    let html: String? = """
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pest Control Form</title>
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
        }
        table, th, td {
            border: 1px solid black;
        }
        th, td {
            padding: 8px;
            text-align: left;
        }
        .section {
            margin-bottom: 20px;
        }
    </style>
</head>
<body>

<h1>PEST CONTROL</h1>

<div class="section">
    <h2>Routine</h2>
    <label><input type="checkbox" name="routine" value="Follow Up" checked> Follow Up</label>
    <label><input type="checkbox" name="routine" value="Call Out"> Call Out</label>
</div>

<div class="section">
    <h2>Report No:</h2>
    <input type="text" name="reportNo">
</div>

<div class="section">
    <h2>Zone:</h2>
    <input type="text" name="zone">
</div>

<div class="section">
    <h2>Name of Landlord / Agency</h2>
    <input type="text" name="landlordAgency">
</div>

<div class="section">
    <h2>Size of Property</h2>
    <input type="text" name="propertySize">
</div>

<div class="section">
    <h2>Agreed Price ______ Received</h2>
    <input type="text" name="agreedPrice">
</div>

<div class="section">
    <h2>Agency or Landlord Will Pay ______</h2>
    <input type="text" name="agencyLandlordPay">
</div>

<div class="section">
    <h2>TYPES OF PEST</h2>
    <table>
        <tr>
            <th>Mice</th>
            <th>Arts</th>
            <th>Fleas</th>
        </tr>
        <tr>
            <td><input type="checkbox" name="pest" value="Mice" checked></td>
            <td><input type="checkbox" name="pest" value="Arts"></td>
            <td><input type="checkbox" name="pest" value="Fleas"></td>
        </tr>
        <tr>
            <th>Rats</th>
            <th>Cockroach</th>
            <th>Bedbug</th>
        </tr>
        <tr>
            <td><input type="checkbox" name="pest" value="Rats"></td>
            <td><input type="checkbox" name="pest" value="Cockroach" checked></td>
            <td><input type="checkbox" name="pest" value="Bedbug"></td>
        </tr>
    </table>
    <p>Other: <input type="text" name="otherPest"></p>
</div>

<div class="section">
    <h2>CHEMICAL USED:</h2>
    <table>
        <tr>
            <th>Difenacoum</th>
            <th>UMTS</th>
            <th>X</th>
        </tr>
        <tr>
            <td><input type="checkbox" name="chemical" value="Difenacoum" checked></td>
            <td><input type="checkbox" name="chemical" value="UMTS"></td>
            <td><input type="checkbox" name="chemical" value="X"></td>
        </tr>
        <!-- Repeat for other chemicals -->
    </table>
</div>

<div class="section">
    <h2>Name:</h2>
    <input type="text" name="name" value="Dirty and 86">
</div>

<div class="section">
    <h2>Telephone:</h2>
    <input type="text" name="telephone">
</div>

<div class="section">
    <h2>Email:</h2>
    <input type="text" name="email">
</div>

<div class="section">
    <h2>Address for treatment:</h2>
    <input type="text" name="address">
</div>

<div class="section">
    <h2>Postcode</h2>
    <input type="text" name="postcode" value="Unit 10">
</div>

<div class="section">
    <h2>Time of treatment</h2>
    <input type="text" name="timeTreatment" value="Date Cl - 03-23S">
</div>

<div class="section">
    <h2>HEALTH & SAFETY-ON SITE ASSESSMENT (MARK 'X')</h2>
    <table>
        <tr>
            <th>PRESENCE OF:</th>
            <th>EVIDENCE OF INFESTATION:</th>
        </tr>
        <tr>
            <td><input type="checkbox" name="presence" value="CHILDREN" checked> CHILDREN</td>
            <td><input type="checkbox" name="evidence" value="BODIES" checked> BODIES</td>
        </tr>
        <!-- Repeat for other options -->
    </table>
</div>

<div class="section">
    <p>It is a legal requirement that before any pesticide is used an assessment of risk is carried out and that measures are taken to prevent or control exposure.</p>
    <p>The instructions on the label must be carried out.</p>
    <p><strong>THE LABEL IS THE LAW</strong></p>
</div>

<div class="section">
    <h2>INSPECTION</h2>
    <p>Part Control in Western Iran, Japan, Central anti-110</p>
    <p>Occasion, Central point Iran, Japan changed into Latin status</p>
    <p>Our trust, partially state up Syria, Iran, Iran required for Conflict</p>
</div>

<div class="section">
    <h2>RECOMMENDATION</h2>
    <p>Client is advised to keep strong. It has one</p>
    <p>Class all five times</p>
</div>

<div class="section">
    <h2>Bait placement plan is on the back of page.</h2>
</div>

</body>
</html>
"""
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        savePDF()
        if let html = htmlString {
            webView.loadHTMLString(html, baseURL: nil)
        }
    }
    
    func fillData(report: String?) -> String {
        return String(format: html ?? "", "Haroon")
    }
    
    func createPDF() -> Data {
        let pdfMetaData = [
            kCGPDFContextCreator: "Pest Control Report",
            kCGPDFContextAuthor: "Your App"
        ]
        let format = UIGraphicsPDFRendererFormat()
        format.documentInfo = pdfMetaData as [String: Any]

        let pageWidth: CGFloat = 595.2 // A4 width in points
        let pageHeight: CGFloat = 841.8 // A4 height in points
        let renderer = UIGraphicsPDFRenderer(bounds: CGRect(x: 0, y: 0, width: pageWidth, height: pageHeight), format: format)

        let data = renderer.pdfData { context in
            context.beginPage()
            
            let margin: CGFloat = 20
            var yPosition: CGFloat = margin

            // Draw title
            let title = "Pest Control Report"
            let titleFont = UIFont.boldSystemFont(ofSize: 18)
            let titleAttributes: [NSAttributedString.Key: Any] = [
                .font: titleFont
            ]
            title.draw(at: CGPoint(x: margin, y: yPosition), withAttributes: titleAttributes)
            yPosition += 30

            // Draw form fields
            let fieldFont = UIFont.systemFont(ofSize: 14)
            let boldFont = UIFont.boldSystemFont(ofSize: 14)
            
            func drawText(_ text: String, x: CGFloat, y: CGFloat, bold: Bool = false) {
                let attributes: [NSAttributedString.Key: Any] = [
                    .font: bold ? boldFont : fieldFont
                ]
                text.draw(at: CGPoint(x: x, y: y), withAttributes: attributes)
            }

            drawText("Report No:", x: margin, y: yPosition, bold: true)
            drawText("10", x: margin + 100, y: yPosition)
            yPosition += 25

            drawText("Zone:", x: margin, y: yPosition, bold: true)
            drawText("UB1", x: margin + 100, y: yPosition)
            yPosition += 25

            drawText("Name:", x: margin, y: yPosition, bold: true)
            drawText("Biryani @ 86", x: margin + 100, y: yPosition)
            yPosition += 25

            drawText("Address for treatment:", x: margin, y: yPosition, bold: true)
            drawText("86 Southall Road", x: margin + 150, y: yPosition)
            yPosition += 25

            drawText("Date:", x: margin, y: yPosition, bold: true)
            drawText("01-02-2025", x: margin + 100, y: yPosition)
            yPosition += 30

            // Draw table for pest types
            drawText("Types of Pest:", x: margin, y: yPosition, bold: true)
            yPosition += 20
            drawText("☑ Mice  ☐ Rats  ☐ Ants  ☐ Cockroach", x: margin + 20, y: yPosition)
            yPosition += 30

            // Health & Safety
            drawText("Health & Safety Assessment:", x: margin, y: yPosition, bold: true)
            yPosition += 20
            drawText("☑ Employees  ☐ Public  ☐ Pet Animals", x: margin + 20, y: yPosition)
            yPosition += 30

            // Inspection Report
            drawText("Inspection:", x: margin, y: yPosition, bold: true)
            yPosition += 20
            let inspectionText = "Pest Control inspection has been carried out. All accessible control points have been checked..."
            let inspectionRect = CGRect(x: margin, y: yPosition, width: pageWidth - 2 * margin, height: 50)
            inspectionText.draw(in: inspectionRect, withAttributes: [ .font: fieldFont ])
            yPosition += 60

            // Recommendation
            drawText("Recommendation:", x: margin, y: yPosition, bold: true)
            yPosition += 20
            let recommendationText = "Client is advised to keep storage & floor area clean all the time."
            let recommendationRect = CGRect(x: margin, y: yPosition, width: pageWidth - 2 * margin, height: 50)
            recommendationText.draw(in: recommendationRect, withAttributes: [ .font: fieldFont ])
            yPosition += 60
        }
        
        return data
    }
    
    func savePDF() -> URL? {
        let pdfData = createPDF()
        let fileName = "Pest_Control_Report.pdf"
        let fileURL = FileManager.default.temporaryDirectory.appendingPathComponent(fileName)

        do {
            try pdfData.write(to: fileURL)
            print(fileURL)
            return fileURL
        } catch {
            print("Error saving PDF:", error)
            return nil
        }
    }
}
