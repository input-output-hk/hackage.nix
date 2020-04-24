{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "halipeto"; version = "2.2"; };
      license = "LicenseRef-GPL";
      copyright = "(c) 2004-2010 Peter Simons";
      maintainer = "Peter Simons <simons@cryp.to>";
      author = "Andrew Cooke <andrew@acooke.org>, Peter Simons <simons@cryp.to>";
      homepage = "http://gitorious.org/halipeto";
      url = "";
      synopsis = "Haskell Static Web Page Generator";
      description = "A library for generating static HTML pages from XML\ntemplates and a file-based value dictionary.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."HaXml" or ((hsPkgs.pkgs-errors).buildDepError "HaXml"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."pandoc" or ((hsPkgs.pkgs-errors).buildDepError "pandoc"))
          ];
        buildable = true;
        };
      };
    }