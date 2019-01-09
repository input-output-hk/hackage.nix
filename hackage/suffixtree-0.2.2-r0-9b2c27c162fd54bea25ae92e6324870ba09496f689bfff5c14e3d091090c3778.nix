{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { bytestring-in-base = false; split-base = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "suffixtree"; version = "0.2.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "bos@serpentine.com";
      author = "Bryan O'Sullivan <bos@serpentine.com>";
      homepage = "http://www.serpentine.com/software/suffixtree/";
      url = "";
      synopsis = "Efficient, lazy suffix tree implementation";
      description = "An efficient, lazy suffix tree implementation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([ (hsPkgs.QuickCheck) ] ++ (if flags.bytestring-in-base
          then [ (hsPkgs.base) ]
          else [ (hsPkgs.base) (hsPkgs.bytestring) ])) ++ (if flags.split-base
          then [ (hsPkgs.base) (hsPkgs.containers) ]
          else [ (hsPkgs.base) ]);
        };
      };
    }