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
      specVersion = "1.6";
      identifier = {
        name = "kit";
        version = "0.7.8";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "nkpart@gmail.com";
      author = "Nick Partridge";
      homepage = "http://github.com/nkpart/kit";
      url = "";
      synopsis = "A dependency manager for Xcode (Objective-C) projects";
      description = "A dependency manager for Xcode (Objective-C) projects";
      buildType = "Simple";
    };
    components = {
      exes = {
        "kit" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.Glob)
            (hsPkgs.HTTP)
            (hsPkgs.ansi-terminal)
            (hsPkgs.bytestring)
            (hsPkgs.cabal-file-th)
            (hsPkgs.cmdargs)
            (hsPkgs.containers)
            (hsPkgs.data-object)
            (hsPkgs.data-object-yaml)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.mtl)
            (hsPkgs.network)
            (hsPkgs.process)
            (hsPkgs.template-haskell)
            (hsPkgs.unix)
          ];
        };
      };
    };
  }