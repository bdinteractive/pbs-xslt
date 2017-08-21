<?xml version="1.0" encoding="UTF-8"?>
<html xsl:version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <style>
    body {
      margin: 0;
      padding: 40px;
      background-color: white;
      font-size: 14px;
      font-family: "Times New Roman", Georgia, Serif;
      color: black;
    }
    .page {
      max-width: 960px;
      margin: 0 auto;
    }
    h1 {
      font-size: 18px;
      margin-bottom: 5px;
    }
    p {
      padding: 0;
      margin: 0 0 10px 0;
    }
    .program {
      margin-bottom: 40px;
    }
    .text-center {
      text-align: center;
    }
    dl {
      width: 535px;
      margin: 0 auto;
      padding: 20px 0 40px 0;
    }
    dt, dd {
      display: inline-block;
      margin: 0;
      padding: 0;
    }
    dt {
      width: 115px;
    }
    dd {
      width: 410px;
    }
  </style>

<body>
  <div class="page">

  <h2 class="text-center">11/1/2016 - 11/30/2016 Listings</h2>

  <p class="text-center">- Wednesday, September 28, 2016 -</p>

  <dl>
    <dt>[CC]</dt>
      <dd>Indicates programs fed with closed captions</dd>
    <dt>[Stereo]</dt>
      <dd>Indicates programs fed in stereo</dd>
    <dt>[DVI]</dt>
      <dd>Indicates programs fed with described video</dd>
    <dt>[HD]</dt>
      <dd>Indicates programs fed in high-definition</dd>
    <dt>[HD-Upconverted]</dt>
      <dd>Indicates programs upconverted to HD and fed in widescreen format</dd>
  </dl>

  <p class="text-center">**Air times are in Eastern Time**</p>

  <p>NOTE ON EDUCATIONAL OFF-AIR RECORD RIGHTS: Where a specific educational off-air record rights period (hereafter abbreviated to Ed.R) is indicated, schools may tape the programs off the air and use them in classrooms during the stated period, after which time the tapes must be erased. Duplication of tapes is not permitted. For educational rights not available at press time, see station program unless otherwise noted.</p>


<xsl:for-each select="root/Program">
  <xsl:sort select="Title" order="ascending"/>

  <div class="program">
    
    <h1><xsl:value-of select="Title"/></h1>

    <p><xsl:value-of select="Description"/></p>
    
    <ul>
      <li>Type: <xsl:value-of select="Type"/></li>
      <li>Runtime: <xsl:value-of select="Runtime"/></li>
      <li>Genre: <xsl:value-of select="Genre"/></li>
      <li>Part Number: <xsl:value-of select="PartNum"/></li>
      <li>Qual: <xsl:value-of select="qual"/></li>
      <li>Production Company: <xsl:value-of select="ProductionCompany"/></li>
    </ul>

    <xsl:for-each select="show/Show">
      <ul>
        <li>Original Air Date: <xsl:value-of select="origAirDate"/></li>
        <li>TV Rating: <xsl:value-of select="tvRating"/></li>
        <li>TV Rating: <xsl:value-of select="tvRating"/></li>
        <li>TV Sub Rating: <xsl:value-of select="tvSubRating"/></li>
      </ul>
    </xsl:for-each>
    
    <xsl:for-each select="schedule">
      <ul>
        <li>Sub Titled: <xsl:value-of select="subtitled"/></li>
        <li>SAP: <xsl:value-of select="SAP"/>
          <xsl:for-each select="Linear">
            <ul>
              <li> Air Date Time: <xsl:value-of select="airDateTime"/></li>
              <li>Duration: <xsl:value-of select="duration"/></li>
            </ul>
          </xsl:for-each>
        </li>
      </ul>
    </xsl:for-each>

  </div>

</xsl:for-each>

</div>
</body>
</html>