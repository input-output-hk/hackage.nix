{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "2.0";
      identifier = { name = "ogma-cli"; version = "1.0.6"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "ivan.perezdominguez@nasa.gov";
      author = "Ivan Perez, Alwyn Goodloe";
      homepage = "http://nasa.gov";
      url = "";
      synopsis = "Ogma: Helper tool to interoperate between Copilot and other languages.";
      description = "Ogma is a tool to facilitate the integration of safe runtime monitors into\nother systems. Ogma extends\n<https://github.com/Copilot-Language/copilot Copilot>, a high-level runtime\nverification framework that generates hard real-time C99 code.\n\nSome use cases supported by Ogma include:\n\n- Translating requirements defined in\n<https://github.com/NASA-SW-VnV/fret NASA requirements elicitation tool FRET>\ninto corresponding monitors in Copilot.\n\n- Generating the glue code necessary to work with C\nstructs in Copilot.\n\n- Generating\n<https://cfs.gsfc.nasa.gov/ NASA Core Flight System>\napplications that use Copilot for monitoring data\nreceived from the message bus.\n\n- Generating message handlers for NASA Core Flight System\napplications to make external data in structs available\nto a Copilot monitor.\n\nThe main invocation with @--help@ lists sub-commands available.\n\n>$ ogma --help\n>ogma - an anything-to-Copilot application generator\n>\n>Usage: ogma COMMAND\n>  Generate complete or partial Copilot applications from multiple languages\n>\n>Available options:\n>  -h,--help                Show this help text\n>\n>Available commands:\n>  structs                  Generate Copilot structs from C structs\n>  handlers                 Generate message handlers from C structs\n>  cfs                      Generate a complete CFS/Copilot application\n>  fret-component-spec      Generate a Copilot file from a FRET Component\n>                           Specification\n>  fret-reqs-db             Generate a Copilot file from a FRET Requirements\n>                           Database\n\nFor further information, see:\n\n- <https://github.com/nasa/ogma The Ogma repository>.\n\n- <https://copilot-language.github.io/ The Copilot web page>.\n\n- <https://github.com/NASA-SW-VnV/fret The FRET repository>.\n\n- <https://cfs.gsfc.nasa.gov/ The NASA Core Flight System web page>.\n\n- <https://ntrs.nasa.gov/citations/20200003164 \"Copilot 3\">, Perez, Dedden and Goodloe. 2020.\n\n- <https://shemesh.larc.nasa.gov/people/cam/publications/FMAS2020_3.pdf \"From Requirements to Autonomous Flight\">, Dutle et al. 2020.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "ogma" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."ogma-core" or (errorHandler.buildDepError "ogma-core"))
          ];
          buildable = true;
        };
      };
      tests = {
        "test-ogma" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          ];
          buildable = true;
        };
      };
    };
  }