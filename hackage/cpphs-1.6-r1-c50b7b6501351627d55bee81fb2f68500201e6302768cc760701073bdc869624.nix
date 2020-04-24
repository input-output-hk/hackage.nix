{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "cpphs"; version = "1.6"; };
      license = "LicenseRef-LGPL";
      copyright = "2004-8, Malcolm Wallace";
      maintainer = "Malcolm Wallace <Malcolm.Wallace@cs.york.ac.uk>";
      author = "Malcolm Wallace <Malcolm.Wallace@cs.york.ac.uk>";
      homepage = "http://haskell.org/cpphs/";
      url = "";
      synopsis = "A liberalised re-implementation of cpp, the C pre-processor.";
      description = "Cpphs is a re-implementation of the C pre-processor that is both\nmore compatible with Haskell, and itself written in Haskell so\nthat it can be distributed with compilers.\n\nThis version of the C pre-processor is pretty-much\nfeature-complete and compatible with traditional (K&R)\npre-processors.  Additional features include: a plain-text mode;\nan option to unlit literate code files; and an option to turn\noff macro-expansion.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
          ];
        buildable = true;
        };
      exes = {
        "cpphs" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
            ];
          buildable = true;
          };
        };
      };
    }