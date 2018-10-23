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
        name = "snap";
        version = "0.5.1.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "snap@snapframework.com";
      author = "James Sanders, Shu-yu Guo, Gregory Collins, Doug Beardsley";
      homepage = "http://snapframework.com/";
      url = "";
      synopsis = "Snap: A Haskell Web Framework: project starter executable and glue code library";
      description = "Snap Framework project starter executable and glue code library";
      buildType = "Simple";
    };
    components = {
      "snap" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.blaze-builder)
          (hsPkgs.bytestring)
          (hsPkgs.directory)
          (hsPkgs.directory-tree)
          (hsPkgs.enumerator)
          (hsPkgs.filepath)
          (hsPkgs.MonadCatchIO-transformers)
          (hsPkgs.snap-core)
          (hsPkgs.heist)
          (hsPkgs.hint)
          (hsPkgs.template-haskell)
          (hsPkgs.time)
        ] ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix);
      };
      exes = {
        "snap" = {
          depends  = [
            (hsPkgs.attoparsec)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.bytestring-nums)
            (hsPkgs.cereal)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.directory-tree)
            (hsPkgs.dlist)
            (hsPkgs.enumerator)
            (hsPkgs.filepath)
            (hsPkgs.haskell98)
            (hsPkgs.mtl)
            (hsPkgs.old-locale)
            (hsPkgs.old-time)
            (hsPkgs.snap-core)
            (hsPkgs.snap-server)
            (hsPkgs.template-haskell)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.unix-compat)
            (hsPkgs.zlib)
          ];
        };
      };
    };
  }