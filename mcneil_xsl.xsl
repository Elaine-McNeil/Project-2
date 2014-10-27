<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/kpop-artists">
	<html>
		<head>
		<link rel="stylesheet" type="text/css" href="mcneil_style.css"/>
		<link href='http://fonts.googleapis.com/css?family=Roboto' rel='stylesheet' type='text/css'/>
		<title>Elaine's K-Pop Table</title>
		</head>
		<body>

		<h3>Introduction</h3>
		<p>The following is a detailed list about some of the most popular K-Pop groups. The list includes the following information about each group:</p>
			<ul class="intro">
				<li>Group name</li>
				<li>Group's label</li>
				<li>Members in the group</li>
				<li>Year and month the group debuted</li>
				<li>Studio albums</li>
				<li>Extended Plays</li>
				<li>Singles</li>
			</ul>
		<p>The following K-Pop groups are listed:</p>
			<ol>
				<li>2NE1</li>
				<li>4Minute</li>
				<li>B2ST (Beast)</li>
				<li>B.A.P</li>
				<li>BIGBANG</li>
				<li>Block B</li>
				<li>Brown Eyed Girls</li>
				<li>BTS (Bangtan Boys)</li>
				<li>Crayon Pop</li>
				<li>f(x)</li>
				<li>Girl's Day</li>
				<li>Girls' Generation</li>
				<li>Infinite</li>
				<li>Miss A</li>
				<li>Secret</li>
				<li>SHINee</li>
				<li>SISTAR</li>
				<li>Super Junior</li>
				<li>T-ARA</li>
				<li>VIXX</li>
			</ol>

			<table>
				<tr>
					<th>Artist</th>
					<th>Label</th>
					<th>Members</th>
					<th>Debut</th>
					<th>Studio Albums</th>
					<th>Extended Plays</th>
					<th>Singles</th>
				</tr>
				<xsl:for-each select="artist">
					<tr>
						<td class="medium">
							<p><div id="artist-name"><xsl:value-of select="artist-name"/></div></p>
						</td>
						
						<td class="narrow">
							<p><xsl:value-of select="label"/></p>
						</td>
						
						<td class="narrow"> 
							<xsl:for-each select="members">
							<xsl:for-each select="member-name">
								<ul><li><div id="member-names"><xsl:value-of select="."/></div></li></ul>
							</xsl:for-each>
							</xsl:for-each>								
						</td>
						
						<td class="medium">
							<p><xsl:value-of select="debut"/></p>
						</td>						
												
						<td class="wide">
							<xsl:for-each select="discography">
							<xsl:for-each select="studio-albums">
							<xsl:for-each select="album">
								<xsl:for-each select="album-name">
									<h1><xsl:value-of select="."/></h1>
								</xsl:for-each>
								<xsl:for-each select="release-date">
									<p><div id="release">Released: <xsl:value-of select="."/></div></p>
								</xsl:for-each>
							<xsl:for-each select="album-songs">
							<xsl:for-each select="song">
								<ul><li><xsl:value-of select="."/></li></ul>
							</xsl:for-each>
							</xsl:for-each>
							</xsl:for-each>
							</xsl:for-each>
							</xsl:for-each>
						</td>					
												
						<td class="wide">
							<xsl:for-each select="discography">
							<xsl:for-each select="extended-plays">
							<xsl:for-each select="album">
								<xsl:for-each select="album-name">
									<h1><xsl:value-of select="."/></h1>
								</xsl:for-each>
								<xsl:for-each select="release-date">
									<p><div id="release">Released: <xsl:value-of select="."/></div></p>
								</xsl:for-each>
							<xsl:for-each select="album-songs">
							<xsl:for-each select="song">
								<ul><li><xsl:value-of select="."/></li></ul>
							</xsl:for-each>
							</xsl:for-each>
							</xsl:for-each>
							</xsl:for-each>
							</xsl:for-each>
						</td>						
						
						<td class="wide">	
							<xsl:for-each select="discography">
							<xsl:for-each select="singles">
							<xsl:for-each select="single">								
								<xsl:for-each select="song">
								<h2><xsl:value-of select="."/></h2>
								</xsl:for-each>								
								<xsl:for-each select="release-date">
									<p><div id="release">Released: <xsl:value-of select="."/></div></p>
								</xsl:for-each>
							</xsl:for-each>
							</xsl:for-each>
							</xsl:for-each>
						</td>
					</tr>
				</xsl:for-each>
			</table>
		</body>
	</html>
</xsl:template>
</xsl:stylesheet>