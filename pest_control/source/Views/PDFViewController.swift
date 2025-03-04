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
            body {
                font-family: Arial, sans-serif;
                margin: 0;
                padding: 20px;
                box-sizing: border-box;
            }
            .header {
                display: flex;
                justify-content: space-between;
                align-items: flex-start;
                margin-bottom: 20px;
            }
            .logo {
                max-width: 350px;
                display: flex;
                align-items: center;
            }
            .logo-text {
                font-size: 40px;
                font-weight: bold;
                letter-spacing: 2px;
            }
            .report-title {
                font-size: 28px;
                font-weight: bold;
                text-align: right;
            }
            .container {
                width: 100%;
                max-width: 900px;
                margin: 0 auto;
            }
            .section {
                border: 1px solid #000;
                margin-bottom: 15px;
                padding: 10px;
            }
            .section-header {
                text-align: center;
                color: #E02020;
                font-weight: bold;
                margin-bottom: 10px;
            }
            .row {
                display: flex;
                margin-bottom: 10px;
            }
            .col {
                flex: 1;
            }
            .input-group {
                margin-bottom: 10px;
                display: flex;
                align-items: center;
            }
            input[type="text"], input[type="number"] {
                width: 100%;
                padding: 5px;
                border: 1px solid #999;
            }
            input[type="checkbox"] {
                margin-right: 8px;
            }
            .divider {
                border-bottom: 1px dashed #999;
                margin: 10px 0;
            }
            .section-title {
                font-weight: bold;
                color: #E02020;
            }
            .chemicals {
                display: grid;
                grid-template-columns: 3fr 1fr;
                gap: 5px;
            }
            .inspection-area, .recommendation-area {
                width: 100%;
                min-height: 120px;
                border: none;
                border-bottom: 1px dashed #999;
                resize: none;
                margin: 5px 0;
            }
            .assessment-table {
                width: 100%;
                border-collapse: collapse;
            }
            .assessment-table th, .assessment-table td {
                border: 1px solid #000;
                padding: 5px;
                text-align: left;
            }
            .footer-text {
                font-size: 10px;
                margin-top: 10px;
            }
            .signature-line {
                border-bottom: 1px solid #000;
                margin-top: 20px;
                padding-bottom: 5px;
            }
            .red-title {
                color: #E02020;
                font-weight: bold;
                margin: 10px 0;
                text-align: center;
            }
            .bold-red {
                color: #E02020;
                font-weight: bold;
            }
            .lightning {
                color: #E02020;
                font-size: 40px;
                font-weight: bold;
                margin: 0 5px;
                transform: rotate(20deg);
                display: inline-block;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <div class="header">
                <div class="logo">
                    <div class="logo-text">LA<span class="lightning">&#x2B24;</span>ER</div>
                </div>
                <div class="report-title">TREATMENT REPORT</div>
            </div>

            <div class="row">
                <div class="col">
                    <div class="input-group">
                        <input type="checkbox" id="routine">
                        <label for="routine">Routine</label>
                    </div>
                    <div class="input-group">
                        <input type="checkbox" id="followup">
                        <label for="followup">Follow Up</label>
                    </div>
                    <div class="input-group">
                        <input type="checkbox" id="callout">
                        <label for="callout">Call Out</label>
                    </div>
                    <div class="input-group">
                        <label>Name of Landlord / Agency:</label>
                        <input type="text">
                    </div>
                    <div class="input-group">
                        <label>Size of Property:</label>
                        <input type="text">
                    </div>
                    <div class="input-group">
                        <label>Agreed Price:</label>
                        <input type="text" style="width: 60%;">
                        <span style="margin-left: 10px;">Received</span>
                        <input type="checkbox" style="margin-left: 5px;">
                    </div>
                    <div class="input-group">
                        <label>Agency or Landlord Will Pay:</label>
                        <input type="text">
                    </div>
                </div>
                <div class="col">
                    <div class="input-group">
                        <label>Report No:</label>
                        <input type="text">
                    </div>
                    <div class="input-group">
                        <label>Zone:</label>
                        <input type="text">
                    </div>
                </div>
            </div>

            <div class="section">
                <div class="section-header">CONTRACT DETAILS OF BUSINESS / OCCUPIER:</div>
                <div class="input-group">
                    <label>Name:</label>
                    <input type="text">
                </div>
                <div class="input-group">
                    <label>Telephone:</label>
                    <input type="text">
                </div>
                <div class="input-group">
                    <label>Email:</label>
                    <input type="text">
                </div>
                <div class="input-group">
                    <label>Address for treatment:</label>
                    <input type="text">
                </div>
                <div class="input-group">
                    <input type="text">
                </div>
                <div class="input-group">
                    <label>Postcode:</label>
                    <input type="text">
                </div>
                <div class="row">
                    <div class="col">
                        <label>Time of treatment</label>
                    </div>
                    <div class="col">
                        <label>Date</label>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col">
                    <div class="section">
                        <div class="section-header">TYPES OF PEST</div>
                        <div class="row">
                            <div class="col">
                                <div class="input-group">
                                    <input type="checkbox" id="mice">
                                    <label for="mice">Mice</label>
                                </div>
                                <div class="input-group">
                                    <input type="checkbox" id="rats">
                                    <label for="rats">Rats</label>
                                </div>
                            </div>
                            <div class="col">
                                <div class="input-group">
                                    <input type="checkbox" id="ants">
                                    <label for="ants">Ants</label>
                                </div>
                                <div class="input-group">
                                    <input type="checkbox" id="cockroach">
                                    <label for="cockroach">Cockroach</label>
                                </div>
                            </div>
                            <div class="col">
                                <div class="input-group">
                                    <input type="checkbox" id="fleas">
                                    <label for="fleas">Fleas</label>
                                </div>
                                <div class="input-group">
                                    <input type="checkbox" id="bedbug">
                                    <label for="bedbug">Bedbug</label>
                                </div>
                            </div>
                        </div>
                        <div class="input-group">
                            <label>Other:</label>
                            <input type="text">
                        </div>
                        <div class="section-title">CHEMICAL USED:</div>
                        <div class="chemicals">
                            <div>Difenacoum</div>
                            <div><input type="text" placeholder="UNITS"></div>
                            <div>Brodifacoum</div>
                            <div><input type="text" placeholder="UNITS"></div>
                            <div>Bromadiolone</div>
                            <div><input type="text" placeholder="UNITS"></div>
                        </div>
                        <div class="input-group">
                            <input type="checkbox" id="indoxacarb">
                            <label for="indoxacarb">Indoxacarb</label>
                        </div>
                        <div class="input-group">
                            <input type="checkbox" id="bendiocarb">
                            <label for="bendiocarb">Bendiocarb</label>
                        </div>
                        <div class="input-group">
                            <input type="checkbox" id="cypermethrin">
                            <label for="cypermethrin">Cypermethrin</label>
                        </div>
                        <div class="input-group">
                            <input type="checkbox" id="alphacypermethrin">
                            <label for="alphacypermethrin">Alpha-cypermethrin + tetramethrin</label>
                        </div>
                        <div class="input-group">
                            <input type="checkbox" id="fenprieimidacloprid">
                            <label for="fenprieimidacloprid">Fenprie Imidacloprid</label>
                        </div>
                        <div class="input-group">
                            <input type="checkbox" id="other-chemical">
                            <label for="other-chemical">Other</label>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="section">
                        <div class="section-header">HEALTH & SAFETY-ON SITE ASSESSMENT (MARK 'X')</div>
                        <table class="assessment-table">
                            <tr>
                                <th>PRESENCE OF:</th>
                                <th></th>
                                <th>EVIDENCE OF INFESTATION:</th>
                                <th></th>
                            </tr>
                            <tr>
                                <td>CHILDREN</td>
                                <td><input type="text"></td>
                                <td>BODIES</td>
                                <td><input type="text"></td>
                            </tr>
                            <tr>
                                <td>EMPLOYEES</td>
                                <td><input type="text"></td>
                                <td>DROPPINGS</td>
                                <td><input type="text"></td>
                            </tr>
                            <tr>
                                <td>PUBLIC</td>
                                <td><input type="text"></td>
                                <td>GNAWING</td>
                                <td><input type="text"></td>
                            </tr>
                            <tr>
                                <td>PET ANIMALS</td>
                                <td><input type="text"></td>
                                <td>SMEAR/RUNWAYS</td>
                                <td><input type="text"></td>
                            </tr>
                            <tr>
                                <td>PROTECTED WILDLIFE</td>
                                <td><input type="text"></td>
                                <td>HOLE IN GROUND</td>
                                <td><input type="text"></td>
                            </tr>
                            <tr>
                                <td>OPEN FOOD</td>
                                <td><input type="text"></td>
                                <td>SIGHTING</td>
                                <td><input type="text"></td>
                            </tr>
                        </table>
                        <p>It is a legal requirement that before any pesticide is used an assessment of risk is carried out and that measures are taken to prevent or control exposure.</p>
                        <p>The instructions on the label must be carried out.</p>
                        <div class="red-title">THE LABEL IS THE LAW</div>
                    </div>
                </div>
            </div>

            <div class="section">
                <div class="section-header">INSPECTION</div>
                <textarea class="inspection-area"></textarea>
                <textarea class="inspection-area"></textarea>
                <textarea class="inspection-area"></textarea>
                <textarea class="inspection-area"></textarea>
            </div>

            <div class="section">
                <div class="section-header">RECOMMENDATION</div>
                <textarea class="recommendation-area"></textarea>
                <textarea class="recommendation-area"></textarea>
                <textarea class="recommendation-area"></textarea>
                <textarea class="recommendation-area"></textarea>
                <div style="text-align: right;">Bait placement plan is on the back of page.</div>
            </div>

            <div class="footer-text">
                <p>I/We authorise your company to enter and carry out all necessary work to treat the infestation. I agree to comply with all terms, conditions & safety information at back of the page. After treatment for rodents it takes 3-4 weeks to get control of pest. It is customer's responsibility to make an appointment for the removal of baits. It is possible that rodents may die in inaccessible places and during decomposition they may cause a smell. Company cannot be held responsible for any costs involved for any remedial activity to rectify the problem.</p>
            </div>

            <div class="row">
                <div class="col">
                    <div class="input-group">
                        <label>Owner/Tenant/Manager/Authorised Agent</label>
                        <div class="signature-line"></div>
                    </div>
                </div>
                <div class="col">
                    <div class="input-group">
                        <label>Print Name</label>
                        <div class="signature-line"></div>
                    </div>
                </div>
            </div>

            <div class="row" style="margin-top: 20px;">
                <div class="col">
                    <div class="input-group">
                        <label>Signed on behalf of company</label>
                        <div class="signature-line"></div>
                    </div>
                </div>
                <div class="col">
                    <div class="input-group">
                        <label>Print Name</label>
                        <div class="signature-line"></div>
                    </div>
                </div>
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
