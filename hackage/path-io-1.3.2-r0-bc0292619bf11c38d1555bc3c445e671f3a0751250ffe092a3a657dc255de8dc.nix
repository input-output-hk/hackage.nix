{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { dev = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "path-io";
        version = "1.3.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Mark Karpov <markkarpov92@gmail.com>";
      author = "Mark Karpov <markkarpov92@gmail.com>";
      homepage = "https://github.com/mrkkrp/path-io";
      url = "";
      synopsis = "Interface to ‘directory’ package for users of ‘path’";
      description = "Interface to ‘directory’ package for users of ‘path’.";
      buildType = "Simple";
    };
    components = {
      "path-io" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.dlist)
          (hsPkgs.exceptions)
          (hsPkgs.filepath)
          (hsPkgs.path)
          (hsPkgs.temporary)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.unix-compat)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.exceptions)
            (hsPkgs.hspec)
            (hsPkgs.path)
            (hsPkgs.path-io)
            (hsPkgs.transformers)
            (hsPkgs.unix-compat)
          ];
        };
      };
    };
  }