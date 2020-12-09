<%-- 
    Document   : contactForm
    Created on : Oct 16, 2020, 3:01:47 PM
    Author     : Edwin
--%>

<div class="jumbotron jumbotron-sm">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-12 col-lg-12">
                            <h1 class="h1" id="contact">
                                Contact us </h1>
                        </div>
                    </div>
                </div>
</div>
           
<div class="container">
                    <div class="row">
                        <div class="col-md-8">
                            <div class="well well-sm">
                                <form>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="name">
                                                Name</label>
                                            <input type="text" class="form-control" id="name" placeholder="Enter name" required="required" />
                                        </div>
                                        <div class="form-group">
                                            <label for="email">
                                                Email Address</label>
                                            <div class="input-group">
                                                <span class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span>
                                                </span>
                                                <input type="email" class="form-control" id="email" placeholder="Enter email" required="required" /></div>
                                        </div>
                                        <div class="form-group">
                                            <label for="subject">
                                                Services</label>
                                            <select id="subject" name="subject" class="form-control" required="required">
                                                <option value="na" selected="">Choose One:</option>
                                                <option value="haircut">Haircut</option>
                                                <option value="lineUp">Line-up</option>
                                                <option value="eyebrows">Eyebrows</option>
                                                <option value="towel">Hot Towel and Shave</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="name">
                                                Message</label>
                                            <textarea name="message" id="message" class="form-control" rows="9" cols="25" required="required"
                                                placeholder="Message"></textarea>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <button type="submit" class="btn btn-primary pull-right" id="btnContactUs">
                                            Send Message</button>
                                    </div>
                                </div>
                                </form>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <form>
                            <legend><span class="glyphicon glyphicon-globe"></span> Our Address</legend>
                            <address>
                                <strong>Clean Cuts</strong><br>
                                740 Central St<br>
                                Fitchburg, Ma 01453<br>
                                <abbr title="Phone">
                                    P:</abbr>
                                (123) 456-7890
                            </address>
                            <address>
                                <strong>E-Mail</strong><br>
                                <a href="mailto:#">Clean.Cuts@shop.com</a>
                            </address>
                            </form>
                        </div>
                    </div>
</div>
