{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.4";
      identifier = { name = "HTab"; version = "1.7.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "guillaumh@gmail.com";
      author = "Guillaume Hoffmann, Carlos Areces, Daniel Gorín, Juan Heguiabehere";
      homepage = "http://hub.darcs.net/gh/htab";
      url = "";
      synopsis = "Tableau based theorem prover for hybrid logics";
      description = "Tableau based theorem prover for hybrid logics";
      buildType = "Simple";
      };
    components = {
      exes = {
        "htab" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.mtl)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.strict)
            (hsPkgs.random)
            (hsPkgs.cmdargs)
            (hsPkgs.hylolib)
            ];
          };
        };
      };
    }