{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "proton-haskell"; version = "0.4"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "jasonrbriggs@gmail.com";
      author = "Jason R Briggs";
      homepage = "http://github.com/jasonrbriggs/proton";
      url = "";
      synopsis = "Simple XML templating library";
      description = "Template library which uses three attributes (eid, aid, rid) in xml tags in order to add dynamic content to an xml/xhtml document.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          ];
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.HUnit)
            ];
          };
        };
      };
    }