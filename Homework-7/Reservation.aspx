<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpages.Master" AutoEventWireup="true" CodeBehind="Reservation.aspx.cs" Inherits="WebApplication23.Reservation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<script src="http://ajax.microsoft.com/ajax/jquery/jquery-1.4.4.js"></script>
<script src="http://ajax.microsoft.com/ajax/jquery.ui/1.8.5/jquery-ui.js"></script>
<script src="http://cachedcommons.org/cache/modernizr/1.5.0/javascripts/modernizr.js"></script>

<p class="style2">&nbsp;</p>
            <h3 style="text-align: left"><em>A Demo Form for Hotel Room Reservation</em></h3>
<form>
            <fieldset>
                <legend class="style6"><strong>Customer Information:</strong></legend>
                <div class="style1">
                    <span class="style6">
                <label for="fullName">Full name:</label></span>
                <input type="text" id="fullName" name="fullName" placeholder="Firstname Lastname" 
                        autofocus class="style6" /><br class="style6" />
                    <span class="style6">
                <label for="email">Email address:</label></span>
                <input type="email" id="email" name="email" class="style6" /><br class="style6" />
                    <span class="style6">
                <label for="phoneNumber">Phone:</label></span>
                <input type="tel" id="phoneNumber" name="phoneNumber" 
                        pattern='\d{3}[\-]\d{3}[\-]\d{4}' title='in U.S. Format. Ex: 123-456-7890' 
                        class="style6"/><br class="style6" />
                    <br class="style6" />
                </div>
            </fieldset>

            <fieldset>
                <legend class="style6"><strong>Room Information</strong>:</legend>
                <div class="style1">
                <span class="style6">
                <label for="arrivalDate">Arrival date </label>
                </span>: <input type=date style="font-family: Aharoni" />

<script>
    $(function () {
        // Check if the browser supports the date input type
        if (!Modernizr.inputtypes.date) {
            // Add the jQuery UI DatePicker to all
            // input tags that have their type attributes
            // set to 'date'
            $('input[type=date]').datepicker({
                // specify the same format as the spec
                dateFormat: 'yy-mm-dd'
            });
        }
    });
    function arrivalTime_onclick() {

    }

</script>
<br />
                <br class="style6" />
                <span class="style6">
                <label for="arrivalTime">Arrival time:</label></span>
                <input type="time" id="arrivalTime" name="arrivalTime" required="required" 
                    class="style6" onclick="return arrivalTime_onclick()" /><br />
                <br class="style6" />
                <span class="style6">
                <label for="roomType">Select Room Type:</label></span>
                <select id="roomType" class="style6">
                    <option>Luxury</option>
                    <option>Standard</option>
                    <option>Economic</option>
                </select>
                <br />
                <br class="style6" />
                <span class="style6">
                <label for="nightNumber">Number of Nights (valid number is 1 to 30):</label></span>
                <input type="number" id="nightNumber" name="nightNumber" min="1" max="30" 
                    value="1" class="style6" /><br />
                <br class="style6" />
                <span class="style6">
                <label for="GuestNumber">Number of Guests (the maximum guests is 3):</label></span>
                <input type="number" id="GuestNumber" name="GuestNumber" min="1" max="3" 
                    value="0" class="style6" />
                <br class="style6" />
                </div>
            </fieldset>
            <fieldset>
                <legend class="style6"><strong>Other Information:</strong></legend>
                <div class="style1">
                    <span class="style6">
                <label for="promotionCode">Promo Code:</label></span>
                <input type="text" size="6" maxlength="4" id="promotionCode" name="promotionCode" 
                        pattern="[a-zA-Z0-9]{4}" 
                        title="Please enter a promotion code " 
                        class="style6" /><br class="style6" />
                <label for="notes">
                    <br class="style6" />
                    <span class="style6">Special note:</span></label>
                    <br class="style6" />
                <textarea id="notes" name="notes" rows="5" cols="40" placeholder="Please Enter your  notes here" class="style6"> </textarea>
                    <br />
                </div>
   
    
            </fieldset>
            <br />
            <br />
            <input type="reset" value="Clear Form" onclick="getfocus()" />
            <input type="submit" value="Request Reservation" />
        </form>
        <p></p>

</asp:Content>
