{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "snap-loader-dynamic";
        version = "0.10.0.4";
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
        depends  = (([
          (hsPkgs.base)
          (hsPkgs.directory-tree)
          (hsPkgs.mtl)
          (hsPkgs.snap-core)
          (hsPkgs.time)
          (hsPkgs.template-haskell)
        ] ++ [
          (hsPkgs.hint)
        ]) ++ (if compiler.isGhc && compiler.version.ge "7.6.0"
          then [ (hsPkgs.directory) ]
          else [
            (hsPkgs.directory)
            (hsPkgs.old-time)
          ])) ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix);
      };
    };
  }