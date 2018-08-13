{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "snap-loader-dynamic";
        version = "0.9.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "snap@snapframework.com";
      author = "Carl Howells";
      homepage = "http://snapframework.com/";
      url = "";
      synopsis = "Snap: A Haskell Web Framework: dynamic loader";
      description = "Snap Framework dynamic loader";
      buildType = "Simple";
    };
    components = {
      "snap-loader-dynamic" = {
        depends  = [
          (hsPkgs.hint)
          (hsPkgs.old-time)
          (hsPkgs.base)
          (hsPkgs.directory)
          (hsPkgs.directory-tree)
          (hsPkgs.mtl)
          (hsPkgs.snap-core)
          (hsPkgs.time)
          (hsPkgs.template-haskell)
        ] ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix);
      };
    };
  }