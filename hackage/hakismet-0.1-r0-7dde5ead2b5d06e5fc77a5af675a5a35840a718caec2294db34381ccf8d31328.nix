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
      specVersion = "1.8";
      identifier = {
        name = "hakismet";
        version = "0.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "mail@n-sch.de";
      author = "Oliver Mader <b52@reaktor42.de>, Nils Schweinsberg <mail@n-sch.de>";
      homepage = "https://code.reaktor42.de/projects/hakismet";
      url = "";
      synopsis = "Akismet spam protection library";
      description = "Network.Akismet offers an easy way to interact with the stop spam service Akismet.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.network)
          (hsPkgs.HTTP)
        ];
      };
    };
  }