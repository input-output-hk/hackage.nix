{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { small_base = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "ChasingBottoms"; version = "1.2.2"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright (c) Nils Anders Danielsson 2004-2007.";
      maintainer = "http://www.cs.chalmers.se/~nad/contact.html";
      author = "Nils Anders Danielsson";
      homepage = "http://www.cs.chalmers.se/~nad/software/#Chasing Bottoms";
      url = "http://www.cs.chalmers.se/~nad/software/ChasingBottoms/ChasingBottoms.tgz";
      synopsis = "For testing partial and infinite values.";
      description = "Do you ever feel the need to test code involving bottoms (e.g. calls\nto the error function), or code involving infinite values? Then this\nlibrary could be useful for you.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.QuickCheck) (hsPkgs.mtl) ] ++ (if flags.small_base
          then [ (hsPkgs.base) (hsPkgs.containers) (hsPkgs.random) ]
          else [ (hsPkgs.base) ]);
        };
      };
    }