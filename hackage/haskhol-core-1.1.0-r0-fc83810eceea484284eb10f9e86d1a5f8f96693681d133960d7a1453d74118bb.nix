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
      specVersion = "1.18";
      identifier = {
        name = "haskhol-core";
        version = "1.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Evan Austin <ecaustin@ittc.ku.edu>";
      author = "Evan Austin <ecaustin@ittc.ku.edu>";
      homepage = "http://haskhol.org";
      url = "";
      synopsis = "The core logical system of HaskHOL, an EDSL for HOL theorem\nproving.";
      description = "More details can be found at the following page:\nhttp://haskhol.org.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.ghc-prim)
          (hsPkgs.template-haskell)
          (hsPkgs.acid-state)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.filepath)
          (hsPkgs.hashable)
          (hsPkgs.mtl)
          (hsPkgs.parsec)
          (hsPkgs.pretty)
          (hsPkgs.safecopy)
          (hsPkgs.shelly)
          (hsPkgs.text)
          (hsPkgs.text-show)
          (hsPkgs.th-lift)
          (hsPkgs.unordered-containers)
        ];
      };
    };
  }