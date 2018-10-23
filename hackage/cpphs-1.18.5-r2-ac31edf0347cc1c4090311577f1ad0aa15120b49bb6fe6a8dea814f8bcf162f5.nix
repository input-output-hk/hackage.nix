{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "cpphs";
        version = "1.18.5";
      };
      license = "LicenseRef-LGPL";
      copyright = "2004-2014, Malcolm Wallace";
      maintainer = "Malcolm Wallace <Malcolm.Wallace@me.com>";
      author = "Malcolm Wallace <Malcolm.Wallace@me.com>";
      homepage = "http://projects.haskell.org/cpphs/";
      url = "";
      synopsis = "A liberalised re-implementation of cpp, the C pre-processor.";
      description = "Cpphs is a re-implementation of the C pre-processor that is both\nmore compatible with Haskell, and itself written in Haskell so\nthat it can be distributed with compilers.\n\nThis version of the C pre-processor is pretty-much\nfeature-complete and compatible with traditional (K&R)\npre-processors.  Additional features include: a plain-text mode;\nan option to unlit literate code files; and an option to turn\noff macro-expansion.";
      buildType = "Simple";
    };
    components = {
      "cpphs" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.old-locale)
          (hsPkgs.old-time)
          (hsPkgs.directory)
          (hsPkgs.polyparse)
        ];
      };
      exes = {
        "cpphs" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.old-locale)
            (hsPkgs.old-time)
            (hsPkgs.directory)
            (hsPkgs.polyparse)
          ];
        };
      };
    };
  }