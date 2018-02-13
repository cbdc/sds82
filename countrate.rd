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
      <name>crate_full</name>
      <unit>ph.s-1</unit>
      <ucd>phot.flux</ucd>
      <description>photon flux integrated in 0.3-10keV</description>
    </column>
    <column>
      <name>crate_error_full</name>
      <unit>ph.s-1</unit>
      <ucd>phot.flux;stat.error</ucd>
      <description>error photon flux integrated in 0.3-10keV</description>
    </column>
    <column>
      <name>exposure_time</name>
      <unit>s</unit>
      <ucd>time.duration;obs.exposure</ucd>
      <description>Total exposure time (non-contiguous)</description>
    </column>
    <column>
      <name>crate_soft</name>
      <unit>ph.s-1</unit>
      <values nullLiteral="-999"/>
      <ucd>phot.flux</ucd>
      <description>photon flux integrated in 0.3-1keV</description>
    </column>
    <column>
      <name>crate_error_soft</name>
      <unit>ph.s-1</unit>
      <values nullLiteral="-999"/>
      <ucd>phot.flux;stat.error</ucd>
      <description>error photon flux integrated in 0.3-1keV</description>
    </column>
    <column>
      <name>ul_soft</name>
      <unit>ph.s-1</unit>
      <values nullLiteral="-999"/>
      <ucd>phot.flux;stat.max</ucd>
      <description>upper-limit photon flux integrated in 0.3-1keV</description>
    </column>
    <column>
      <name>crate_medium</name>
      <unit>ph.s-1</unit>
      <values nullLiteral="-999"/>
      <ucd>phot.flux</ucd>
      <description>photon flux integrated in 1-2keV</description>
    </column>
    <column>
      <name>crate_error_medium</name>
      <unit>ph.s-1</unit>
      <values nullLiteral="-999"/>
      <ucd>phot.flux;stat.error</ucd>
      <description>error photon flux integrated in 1-2keV</description>
    </column>
    <column>
      <name>ul_medium</name>
      <unit>ph.s-1</unit>
      <values nullLiteral="-999"/>
      <ucd>phot.flux;stat.max</ucd>
      <description>upper-limit photon flux integrated in 1-2keV</description>
    </column>
    <column>
      <name>crate_hard</name>
      <unit>ph.s-1</unit>
      <values nullLiteral="-999"/>
      <ucd>phot.flux</ucd>
      <description>photon flux integrated in 2-10keV</description>
    </column>
    <column>
      <name>crate_error_hard</name>
      <unit>ph.s-1</unit>
      <values nullLiteral="-999"/>
      <ucd>phot.flux;stat.error</ucd>
      <description>error photon flux integrated in 2-10keV</description>
    </column>
    <column>
      <name>ul_hard</name>
      <unit>ph.s-1</unit>
      <values nullLiteral="-999"/>
      <ucd>phot.flux;stat.max</ucd>
      <description>upper-limit photon flux integrated in 2-10keV</description>
    </column>
  </table>

  <data id="import">
    <sources>countrate/sds82.csv</sources>
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

