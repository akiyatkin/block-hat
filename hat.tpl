{root:}
	<nav class="container" style="padding-bottom:15px; padding-top:15px; font-size:16px; font-family:Arial">
		<div style="float:left; width:310px;">
			<table>
				<tr>
					<td>
						<a href="/">
							<img alt="Логотип" style="margin-right:10px" height="80" src="/-imager/?src={data.logo}&amp;h=80">
						</a>
					</td>
					<td style="vertical-align: bottom">
						{data.title}
					</td>
				</tr>
			</table>
		</div>
		<div style="margin-left:310px;">
			<table style="height:80px; width:100%">
				<tr>
					<td style="text-align:right;">
						<span style="white-space: nowrap">{data.top}</span><br>
						<span style="white-space: nowrap; font-size:22px; color:black">{data.phone}</span>
					</td>
				</tr>
				<tr>
					<td style="vertical-align: bottom; text-align: right">
						<div id="block-hat-menu"></div>
					</td>
				</tr>
			</table>
		</div>
	</nav>
{MENU:}
	<div class="block-hat-menu">
		<style scoped>
			.block-hat-menu .child {
				position:absolute;
				z-index:1;
			}
			.block-hat-menu ul {
	    		padding: 0;
	    		list-style: none;
	    		margin: 0;
	    		float:right;
			}
			.block-hat-menu ul li {
				float: left;
			    position: relative;
				display: block;
			}
			.block-hat-menu a {
				text-decoration: none;
				color:black;
				padding-left:25px;
			    position: relative;
	    		display: block;
	    		transition: 0.4s;
			}
			.block-hat-menu a:hover {
				color:#065c9a;
			}
			.block-hat-menu .dropdown-menu {
				padding-top:5px;
				padding-bottom:5px;
			}
			.block-hat-menu .dropdown-menu li {
				width:100%;
			}
			.block-hat-menu .dropdown-menu a:hover {
				color:black;
				background-color: #9cd9ef;
			}
			.block-hat-menu .dropdown-menu small {
				color:gray;
			}
			@media (max-width: 768px) {
				.block-hat-menu a {
					margin-top:10px;
					padding-right:15px;
					padding-left:10px;
				}
			}
		</style>
		<ul>
			{data::item}
		</ul>
		<script>
			domready( function () {
				var div = $('.block-hat');
				div.find('.menu a').click( function () {
					$(this).next().filter('.child').slideToggle('slow');
				});
			});
		</script>
	</div>
	{item:}
		{childs?:sub?:notsub}
		{notsub:}
			<li>
				
				<a href="{href}">
					{label?:label}{title}
				</a>
			</li>
		{label:}<small>{label}</small><br>
		{sub:}
			<li class="dropdown">
				<a onclick="return false" infra="false" href="{href}" class="dropdown-toggle"
					 data-toggle="dropdown" role="button" 
					 aria-expanded="false">{title} <span class="caret"></span>
				</a>
				<ul class="dropdown-menu" role="menu">
					{childs::item}
				</ul>
			</li>
