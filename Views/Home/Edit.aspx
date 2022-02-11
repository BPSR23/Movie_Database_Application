<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<MovieApp.Models.Movie>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Edit
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Edit</h2>

    <% using (Html.BeginForm()) {%>
        <%= Html.ValidationSummary(true) %>
        
        <fieldset>
            <legend>Fields</legend>
            
            <div class="editor-label">
                <%= Html.LabelFor(model => model.id) %>
            </div>
            <div class="editor-field">
                <%= Html.TextBoxFor(model => model.id) %>
                <%= Html.ValidationMessageFor(model => model.id) %>
            </div>
            
            <div class="editor-label">
                <%= Html.LabelFor(model => model.Title) %>
            </div>
            <div class="editor-field">
                <%= Html.TextBoxFor(model => model.Title) %>
                <%= Html.ValidationMessageFor(model => model.Title) %>
            </div>
            
            <div class="editor-label">
                <%= Html.LabelFor(model => model.Director) %>
            </div>
            <div class="editor-field">
                <%= Html.TextBoxFor(model => model.Director) %>
                <%= Html.ValidationMessageFor(model => model.Director) %>
            </div>
            
            <div class="editor-label">
                <%= Html.LabelFor(model => model.DateReleased) %>
            </div>
            <div class="editor-field">
                <%= Html.TextBoxFor(model => model.DateReleased, String.Format("{0:g}", Model.DateReleased)) %>
                <%= Html.ValidationMessageFor(model => model.DateReleased) %>
            </div>
            
            <p>
                <input type="submit" value="Save" />
            </p>
        </fieldset>

    <% } %>

    <div>
        <%= Html.ActionLink("Back to List", "Index") %>
    </div>

</asp:Content>

