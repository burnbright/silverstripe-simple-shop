<% require themedCSS(product,shop) %>
<aside class="sidebar unit size1of4">
	<% include ProductMenu %>
	<div class="cart">
		<% include SideCart %>
	</div>
</aside>
<div id="Product" class="typography content-container unit size3of4 lastUnit">
	<h1 class="pageTitle">$Title</h1>
	<div class="breadcrumbs">$Breadcrumbs</div>
	<div class="productDetails">
		<% if Image.ContentImage %>
			<img class="productImage" src="$Image.ContentImage.URL" alt="<% sprintf(_t("IMAGE","%s image"),$Title) %>" />
		<% else %>
			<div class="noimage">no image</div>
		<% end_if %>
		<% if InternalItemID %><p><% _t("CODE","Product Code") %>: {$InternalItemID}</p><% end_if %>
		<% if Model %><p><% _t("MODEL","Model") %>: $Model.XML</p><% end_if %>
		<% if Size %><p><% _t("SIZE","Size") %>: $Size.XML</p><% end_if %>
		<% if PriceRange %>
			<div class="price">
				<strong class="value">$PriceRange.Min.Nice</strong>
				<% if PriceRange.HasRange %>
					- <strong class="value">$PriceRange.Max.Nice</strong>
				<% end_if %>
				<span class="currency">$Price.Currency</span>
			</div>
		<% else %>
			<% if Price %>
				<div class="price">
					<strong class="value">$Price.Nice</strong> <span class="currency">$Price.Currency</span>
				</div>
			<% end_if %>
		<% end_if %>
		$Form
	</div>
	<% if Content %>
		<div class="productContent typography">
			$Content
		</div>
	<% end_if %>
</div>