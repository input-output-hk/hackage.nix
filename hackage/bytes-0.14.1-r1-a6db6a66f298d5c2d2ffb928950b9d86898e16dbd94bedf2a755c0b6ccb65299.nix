{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      test-doctests = true;
      lib-werror = false;
    };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "bytes";
        version = "0.14.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2013 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/analytics/bytes";
      url = "";
      synopsis = "Sharing code for serialization between binary and cereal";
      description = "Sharing code for serialization between binary and cereal";
      buildType = "Custom";
    };
    components = {
      "bytes" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.transformers-compat)
          (hsPkgs.void)
        ] ++ pkgs.lib.optional (compiler.isGhc && (compiler.version.ge "7.4" && compiler.version.lt "7.6")) (hsPkgs.ghc-prim);
      };
      tests = {
        "doctests" = {
          depends  = pkgs.lib.optionals (!(!flags.test-doctests)) [
            (hsPkgs.base)
            (hsPkgs.bytes)
            (hsPkgs.directory)
            (hsPkgs.doctest)
            (hsPkgs.filepath)
          ];
        };
      };
    };
  }