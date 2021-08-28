<%@ Page Title="" Language="C#" MasterPageFile="~/ECommerceMasterPage.master" AutoEventWireup="true" CodeFile="AddProduct.aspx.cs" Inherits="AddProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <div class="form-horizontal">
            <h2>Add product</h2>
            <hr />




            <div class="form-group">
                <asp:Label ID="productNameLabel" runat="server" CssClass="col-md-2 control-label" Text="Produc tName"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtProductName" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
            </div>


            <div class="form-group">
                <asp:Label ID="PriceLabel" runat="server" CssClass="col-md-2 control-label" Text="Price"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtPrice" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="SellingPriceLabel" runat="server" CssClass="col-md-2 control-label" Text="Selling Price"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtSellingPrice" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
            </div>

            <div class="form-group">
                <asp:Label ID="BrandLabel" runat="server" CssClass="col-md-2 control-label" Text="BRAND"></asp:Label>
                <div class="col-md-3">
                    <asp:DropDownList ID="ddlBrand" runat="server"></asp:DropDownList>
                </div>

                <div class="form-group">
                    <asp:Label ID="CategoryLabel" runat="server" CssClass="col-md-2 control-label" Text="CATEGORY"></asp:Label>
                    <div class="col-md-3">
                        <asp:DropDownList ID="ddlCategory" runat="server"></asp:DropDownList>
                    </div>

                </div>

                <div class="form-group">
                    <asp:Label ID="SubCategoryLabel" runat="server" CssClass="col-md-2 control-label" Text="SUB CATEGORY"></asp:Label>
                    <div class="col-md-3">
                        <asp:DropDownList ID="ddlSubCategory" runat="server"></asp:DropDownList>
                    </div>

                </div>
                
                
                
                <div class="form-group">
                    <asp:Label ID="GenderLabel" runat="server" CssClass="col-md-2 control-label" Text="GENDER"></asp:Label>
                    <div class="col-md-3">
                        <asp:DropDownList ID="DropDownListGender" runat="server"></asp:DropDownList>
                    </div>

                </div>

                <div class="form-group">
                    <asp:Label ID="SizeLabel" runat="server" CssClass="col-md-2 control-label" Text="SIZE"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtSize" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                </div>



                <div class="form-group">
                    <asp:Label ID="DescriptionLabel" runat="server" CssClass="col-md-2 control-label" Text="DESCRIPTION"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtDescription" TextMode="MultiLine" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                </div>


                <div class="form-group">
                    <asp:Label ID="Image1Label" runat="server" CssClass="col-md-2 control-label" Text="IMAGE1"></asp:Label>
                    <div class="col-md-3">
                        <asp:FileUpload ID="FileUploadImage1" CssClass="col-md-2 control-label" runat="server" />

                    </div>
                </div>

                <div class="form-group">
                    <asp:Label ID="Image2Label" runat="server" CssClass="col-md-2 control-label" Text="IMAGE2"></asp:Label>
                    <div class="col-md-3">
                        <asp:FileUpload ID="FileUploadImage2" CssClass="col-md-2 control-label" runat="server" />

                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="Image3Label" runat="server" CssClass="col-md-2 control-label" Text="IMAGE3"></asp:Label>
                    <div class="col-md-3">
                        <asp:FileUpload ID="FileUploadImage3" CssClass="col-md-2 control-label" runat="server" />

                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="Image4Label" runat="server" CssClass="col-md-2 control-label" Text="IMAGE4"></asp:Label>
                    <div class="col-md-3">
                        <asp:FileUpload ID="FileUploadImage4" CssClass="col-md-2 control-label" runat="server" />

                    </div>
                </div>



                <div class="form-group">
                    <asp:Label ID="FreeDeliveryLabel" runat="server" CssClass="col-md-2 control-label" Text="Free Delivery"></asp:Label>
                    <div class="col-md-3">
                        <asp:CheckBox ID="CheckBoxFreeDelivery" runat="server" />
                    </div>

                </div>

                <div class="form-group">
                    <asp:Label ID="returnLabel" runat="server" CssClass="col-md-2 control-label" Text="30 Days return"></asp:Label>
                    <div class="col-md-3">
                        <asp:CheckBox ID="CheckBoxReturn" runat="server" />
                    </div>

                </div>




                <div class="form-group">
                    <div class="col-md-2"></div>
                    <div class="col-md-6">
                        <asp:Button ID="ButtonAddProduct" CssClass="btn btn-outline-white waves-effect waves-light" runat="server" Text="ADD PRODUCT" OnClick="ButtonAddProduct_Click" />
                    </div>

                </div>




            </div>


        </div>
    </div>

</asp:Content>

