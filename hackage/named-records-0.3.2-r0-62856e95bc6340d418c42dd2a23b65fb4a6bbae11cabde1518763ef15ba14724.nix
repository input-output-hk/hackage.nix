{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "named-records";
        version = "0.3.2";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Julian Fleischer <julian.fleischer@fu-berlin.de>";
      author = "Julian Fleischer <julian.fleischer@fu-berlin.de>";
      homepage = "";
      url = "";
      synopsis = "Flexible records with named fields.";
      description = "Flexible records with named fields.\n\n[@v0.1@] Initial (not published on cabal).\n\n[@v0.2@] @record@ allows for default values now.\n\n[@v0.2.1@] Requires @names-0.2.1@ now.\n\n[@v0.2.2@] TH @record@ definitions allow for\nmore types to be used in the definition.\n\n[@v0.2.3@] Cabal package tidied up and basic\ndocumentation added (also fixed a bug regarding\ndefinition of default values).\n\n[@v0.3@] Records can now extend other records.\n\n[@v0.3.1@] Added sample files to cabal package,\nrequirements bumped for names-v0.3\n\n[@v0.3.2@] Added @new@.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.names)
          (hsPkgs.template-haskell)
        ];
      };
    };
  }