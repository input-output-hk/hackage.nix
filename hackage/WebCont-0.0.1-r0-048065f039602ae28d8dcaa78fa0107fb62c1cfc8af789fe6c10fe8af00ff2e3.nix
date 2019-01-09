{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "WebCont"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "amsay@amsay.net";
      author = "Sam Anklesaria";
      homepage = "http://patch-tag.com/r/salazar/webconts/snapshot/current/content/pretty";
      url = "";
      synopsis = "Continuation based web programming for Happstack";
      description = "WebCont allows continuation based web programming to be integrated with Happstack, allowing\nstep based interfaces along with traditional handlers. It is based on <http://gist.github.com/260052>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.happstack-server)
          (hsPkgs.happstack-state)
          (hsPkgs.happstack-util)
          (hsPkgs.mtl)
          (hsPkgs.concatenative)
          (hsPkgs.formlets)
          (hsPkgs.utf8-string)
          (hsPkgs.containers)
          (hsPkgs.xhtml)
          (hsPkgs.applicative-extras)
          (hsPkgs.base)
          ];
        };
      };
    }