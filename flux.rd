<resource schema="sds82">
  <meta name="title">Swift DeepSky-Stripe82</meta>
  <meta name="creationDate">2018-01-01T01:02:03</meta>
  <meta name="description">
  The SDS82 catalog is the result of the Swift DeepSky pipeline
  over all observations made by Swift-XRT within the Stripe82.
  </meta>
  <meta name="creator.name">Carlos Brandt and Paolo Giommi</meta>

  <meta name="subject">catalogs</meta>
  <meta name="subject">photometry</meta>
  <meta name="subject">high energy</meta>

  <meta name="coverage">
    <meta name="profile">AllSky ICRS</meta>
    <meta name="waveband">X-ray</meta>
  </meta>

<!--
  <meta name="_longdoc" format="rst">
  </meta>
-->

  <meta name="source">
    2018AA.inpress;
  </meta>

  <meta name="_intro" format="rst"> <![CDATA[
    For advanced queries on this catalogue use ADQL_
    possibly via TAP_

    .. _ADQL: /adql
    .. _TAP: /tap
  ]]> </meta>

  <table id="main" onDisk="True" mixin="//scs#q3cindex"
    primary="objid">
    <index columns="ra,dec"/>

    <column>
      <name>objid</name>
      <ucd>meta.id;meta.main</ucd>
      <description>Object ID</description>
      <type>integer</type>
    </column>
    <column>
      <name>ra</name>
      <unit>deg</unit>
      <ucd>pos.eq.ra;meta.main</ucd>
      <description>Right Ascension</description>
    </column>
    <column>
      <name>dec</name>
      <unit>deg</unit>
      <ucd>pos.eq.dec;meta.main</ucd>
      <description>Declination</description>
    </column>
    <column>
      <name>nh</name>
      <unit>cm-2</unit>
      <ucd>phys.columnDensity</ucd>
      <description>Total HI column density</description>
    </column>
    <column>
      <name>energy_slope</name>
      <ucd>spect.index</ucd>
      <description>Hard/Soft flux ratio</description>
    </column>
    <column>
      <name>energy_slope_error</name>
      <ucd>stat.error;spect.index</ucd>
      <type>text</type>
      <description>Hard/Soft flux ratio error</description>
      <values nullLiteral="-999"/>
    </column>
    <column>
      <name>exposure_time</name>
      <unit>s</unit>
      <ucd>time.duration;obs.exposure</ucd>
      <description>Total exposure time (non-contiguous)</description>
    </column>
    <column>
      <name>nufnu_3000ev</name>
      <unit>erg.s-1.cm-2</unit>
      <ucd>phot.flux;em.X-ray</ucd>
      <description>Full band nuFnu-flux at 3000eV</description>
      <type>double precision</type>
    </column>
    <column>
      <name>nufnu_error_3000ev</name>
      <unit>erg.s-1.cm-2</unit>
      <ucd>stat.error;phot.flux;em.X-ray</ucd>
      <description>Full band nuFnu-flux at 3000eV</description>
      <type>double precision</type>
    </column>
    <column>
      <name>nufnu_500ev</name>
      <unit>erg.s-1.cm-2</unit>
      <values nullLiteral="-999"/>
      <ucd>phot.flux;em.X-ray.soft</ucd>
      <description>soft nuFnu-flux at 500ev</description>
    </column>
    <column>
      <name>nufnu_error_500ev</name>
      <unit>erg.s-1.cm-2</unit>
      <values nullLiteral="-999"/>
      <ucd>stat.error;phot.flux;em.X-ray.soft</ucd>
      <description>soft nuFnu-flux at 500ev</description>
    </column>
    <column>
      <name>upper_limit_500ev</name>
      <unit>erg.s-1.cm-2</unit>
      <values nullLiteral="-999"/>
      <ucd>phot.flux;em.X-ray.soft;stat.max</ucd>
      <description>medium nuFnu-flux at 500ev</description>
    </column>
    <column>
      <name>nufnu_1500ev</name>
      <unit>erg.s-1.cm-2</unit>
      <values nullLiteral="-999"/>
      <ucd>phot.flux;em.X-ray.medium</ucd>
      <description>medium nuFnu-flux at 1500ev</description>
    </column>
    <column>
      <name>nufnu_error_1500ev</name>
      <unit>erg.s-1.cm-2</unit>
      <values nullLiteral="-999"/>
      <ucd>stat.error;phot.flux;em.X-ray.medium</ucd>
      <description>medium nuFnu-flux at 1500ev</description>
    </column>
    <column>
      <name>upper_limit_1500ev</name>
      <unit>erg.s-1.cm-2</unit>
      <values nullLiteral="-999"/>
      <ucd>phot.flux;em.X-ray.medium;stat.max</ucd>
      <description>medium nuFnu-flux at 1500ev</description>
    </column>
    <column>
      <name>nufnu_4500ev</name>
      <unit>erg.s-1.cm-2</unit>
      <values nullLiteral="-999"/>
      <ucd>phot.flux;em.X-ray.hard</ucd>
      <description>hard nuFnu-flux at 4500ev</description>
    </column>
    <column>
      <name>nufnu_error_4500ev</name>
      <unit>erg.s-1.cm-2</unit>
      <values nullLiteral="-999"/>
      <ucd>stat.error;phot.flux;em.X-ray.hard</ucd>
      <description>hard nuFnu-flux at 4500ev</description>
    </column>
    <column>
      <name>upper_limit_4500ev</name>
      <unit>erg.s-1.cm-2</unit>
      <values nullLiteral="-999"/>
      <ucd>phot.flux;em.X-ray.hard;stat.max</ucd>
      <description>hard nuFnu-flux at 4500ev</description>
    </column>
  </table>

  <data id="import">
    <sources>sds82.csv</sources>
    <csvGrammar/>
    <make table="main">
      <rowmaker idmaps="*"/>
    </make>
  </data>

  <service id="cone" allowed="scs.xml,form">
    <meta name="title">SDS82 catalog</meta>
    <meta name="shortName">sds82 cone</meta>
    <meta name="testQuery">
      <meta name="ra">20.02637</meta>
      <meta name="dec">21.98903</meta>
      <meta name="sr">1.0</meta>
    </meta>

    <dbCore queriedTable="main">
      <FEED source="//scs#coreDescs"/>
    </dbCore>

    <!--publish render="scs.xml" sets="local"/-->
    <publish render="form" sets="local"/>
    <outputTable verbLevel="20"/>
  </service>

</resource>

