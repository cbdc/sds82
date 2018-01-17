<resource schema="whsp">
  <meta name="title">WISE High Synchroton Peak blazar candidates catalog</meta>
  <meta name="creationDate">2015-08-12T01:02:03</meta>
  <meta name="description">
    The catalog 1WHSP is the result of a multi-frequency selection for blazars
    like SED, further filtered using IR-radio and IR-X-ray flux-ratios. The sample
    assembled contains almost 992 sources of HSP blazars, of which 425 are
    previously known blazars, 151 new identifications and 416 blazar candidates.
    On the very high energy trend, 299 are confirmed GeV gamma-ray photons emitters
    and 36 have already been detected in the TeV band.
  </meta>
  <meta name="creator.name">Arsioli B., Fraga B., Giommi P., et al.</meta>

  <meta name="subject">Catalogs</meta>
  <meta name="subject">active galaxies</meta>
  <meta name="subject">BL Lacertae</meta>
  <meta name="subject">non-thermal radiation</meta>
  <meta name="subject">blazars</meta>

  <meta name="coverage">
    <meta name="profile">AllSky ICRS</meta>
    <meta name="waveband">Infrared</meta>
    <meta name="waveband">Radio</meta>
    <meta name="waveband">Gamma-ray</meta>
    <meta name="waveband">X-ray</meta>
  </meta>

  <meta name="_longdoc" format="rst">
    We assembled a sample including 992 sources, which is currently the largest
    existing list of confirmed and candidates HSP blazars. All objects are
    expected to radiate up to the highest gamma-ray photon energies. In fact,
    299 of these are confirmed emitters of GeV gamma-ray photons (based on
    Fermi-LAT catalogues), and 36 have already been detected in the TeV band.
    The majority of sources in the sample are within reach of the upcoming
    Cherenkov Telescope Array (CTA), and many may be detectable even by the
    current generation of Cherenkov telescopes during flaring episodes.
    The sample includes 425 previously known blazars, 151 new identifications,
    and 416 HSP candidates (mostly faint sources) for which no optical spectra
    is available yet. The sample was defined starting from a primary list of
    infrared colour-colour selected sources from the ALLWISE all sky survey
    database, and applying further restrictions on IR-radio and IR-X-ray flux
    ratios. Using a polynomial fit to the multi-frequency data (radio to X-ray)
    we estimated synchrotron peak frequencies and fluxes of each object.
  </meta>

    <meta name="source">
    2015AA.inpress;
  </meta>

  <meta name="_intro" format="rst"> <![CDATA[
    For advanced queries on this catalogue use ADQL_
    possibly via TAP_

    .. _ADQL: /adql
    .. _TAP: /tap
  ]]> </meta>

  <table id="main" onDisk="True" mixin="//scs#q3cindex"
    primary="OBJID">
    <index columns="RA,DEC"/>

    <column>
      <values name="OBJID"/>
      <values ucd="meta.id;meta.main"/>
      <values description="Object ID"/>
    </column>
    <column>
      <values name="RA"/>
      <values unit="deg"/>
      <values ucd="pos.eq.ra;meta.main"/>
      <values description="Right Ascension"/>
    </column>
    <column>
      <values name="DEC"/>
      <values unit="deg"/>
      <values ucd="pos.eq.dec;meta.main"/>
      <values description="DeclinationOBJID"/>
    </column>
    <column>
      <values name="NH"/>
      <values unit="cm-2"/>
      <values ucd="phys.columnDensity"/>
      <values description="Total HI column density"/>
    </column>
    <column>
      <values name="ENERGY_SLOPE"/>
      <values ucd="spect.index"/>
      <values description="Hard/Soft flux ratio"/>
    </column>
    <column>
      <values name="ENERGY_SLOPE_ERROR"/>
      <values nullLiteral="-999"/>
      <values ucd="stat.error;spect.index"/>
      <values description="Hard/Soft flux ratio error"/>
    </column>
    <column>
      <values name="EXPOSURE_TIME"/>
      <values unit="s"/>
      <values ucd="time.duration;obs.exposure"/>
      <values description="Total exposure time (non-contiguous)"/>
    </column>
    <column>
      <values name="nufnu_3keV"/>
      <values unit="erg.s-1.cm-2"/>
      <values ucd="phot.flux;em.X-ray"/>
      <values description="Full band nuFnu-flux at 3keV"/>
    </column>
    <column>
      <values name="nufnu_error_3keV"/>
      <values unit="erg.s-1.cm-2"/>
      <values ucd="stat.error;phot.flux;em.X-ray"/>
      <values description="Full band nuFnu-flux at 3keV"/>
    </column>
    <column>
      <values name="nufnu_0.5keV"/>
      <values unit="erg.s-1.cm-2"/>
      <values null="-999"/>
      <values ucd="phot.flux;em.X-ray.soft"/>
      <values description="soft nuFnu-flux at 0.5keV"/>
    </column>
    <column>
      <values name="nufnu_error_0.5keV"/>
      <values unit="erg.s-1.cm-2"/>
      <values null="-999"/>
      <values ucd="stat.error;phot.flux;em.X-ray.soft"/>
      <values description="soft nuFnu-flux at 0.5keV"/>
    </column>
    <column>
      <values name="upper_limit_0.5keV"/>
      <values unit="erg.s-1.cm-2"/>
      <values null="-999"/>
      <values ucd="phot.flux;em.X-ray.soft;stat.max"/>
      <values description="medium nuFnu-flux at 0.5keV"/>
    </column>
    <column>
      <values name="nufnu_1.5keV"/>
      <values unit="erg.s-1.cm-2"/>
      <values null="-999"/>
      <values ucd="phot.flux;em.X-ray.medium"/>
      <values description="medium nuFnu-flux at 1.5keV"/>
    </column>
    <column>
      <values name="nufnu_error_1.5keV"/>
      <values unit="erg.s-1.cm-2"/>
      <values null="-999"/>
      <values ucd="stat.error;phot.flux;em.X-ray.medium"/>
      <values description="medium nuFnu-flux at 1.5keV"/>
    </column>
    <column>
      <values name="upper_limit_1.5keV"/>
      <values unit="erg.s-1.cm-2"/>
      <values null="-999"/>
      <values ucd="phot.flux;em.X-ray.medium;stat.max"/>
      <values description="medium nuFnu-flux at 1.5keV"/>
    </column>
    <column>
      <values name="nufnu_4.5keV"/>
      <values unit="erg.s-1.cm-2"/>
      <values null="-999"/>
      <values ucd="phot.flux;em.X-ray.hard"/>
      <values description="hard nuFnu-flux at 4.5keV"/>
    </column>
    <column>
      <values name="nufnu_error_4.5keV"/>
      <values unit="erg.s-1.cm-2"/>
      <values null="-999"/>
      <values ucd="stat.error;phot.flux;em.X-ray.hard"/>
      <values description="hard nuFnu-flux at 4.5keV"/>
    </column>
    <column>
      <values name="upper_limit_4.5keV"/>
      <values unit="erg.s-1.cm-2"/>
      <values null="-999"/>
      <values ucd="phot.flux;em.X-ray.hard;stat.max"/>
      <values description="hard nuFnu-flux at 4.5keV"/>
    </column>
  </table>

  <data id="import">
    <sources>data/sds82.csv</sources>
    <!-- The input assumes a dump from the web site file with the HTML
      junk at the foot removed and everything at the top removed
      down to (but not including) the line with the column indices -->
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

    <publish render="scs.xml" sets="ivo_managed"/>
    <publish render="form" sets="local"/>
    <outputTable verbLevel="20"/>
  </service>

</resource>
