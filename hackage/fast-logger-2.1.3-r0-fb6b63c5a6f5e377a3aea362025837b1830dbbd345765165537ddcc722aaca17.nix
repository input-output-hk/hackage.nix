{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      usebytestring102 = true;
    };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "fast-logger";
        version = "2.1.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Kazu Yamamoto <kazu@iij.ad.jp>";
      author = "Kazu Yamamoto <kazu@iij.ad.jp>";
      homepage = "";
      url = "";
      synopsis = "A fast logging system";
      description = "A fast logging system";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.text)
        ] ++ (if flags.usebytestring102
          then [ (hsPkgs.bytestring) ]
          else [
            (hsPkgs.blaze-builder)
            (hsPkgs.bytestring)
          ]);
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.fast-logger)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }