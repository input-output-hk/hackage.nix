{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "hw-uri"; version = "0.0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "John Ky 2019";
      maintainer = "newhoggy@gmail.com";
      author = "John Ky";
      homepage = "https://github.com/haskell-works/hw-uri";
      url = "";
      synopsis = "Supports IO on URIs";
      description = "Supports IO on URIs.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.amazonka)
          (hsPkgs.amazonka-core)
          (hsPkgs.amazonka-s3)
          (hsPkgs.antiope-core)
          (hsPkgs.antiope-s3)
          (hsPkgs.bytestring)
          (hsPkgs.directory)
          (hsPkgs.exceptions)
          (hsPkgs.filepath)
          (hsPkgs.http-client)
          (hsPkgs.http-types)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.resourcet)
          (hsPkgs.text)
          ];
        };
      tests = {
        "hw-uri-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.antiope-core)
            (hsPkgs.antiope-s3)
            (hsPkgs.bytestring)
            (hsPkgs.filepath)
            (hsPkgs.hedgehog)
            (hsPkgs.hspec)
            (hsPkgs.http-types)
            (hsPkgs.hw-hspec-hedgehog)
            (hsPkgs.lens)
            (hsPkgs.text)
            (hsPkgs.hw-uri)
            ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover or (pkgs.buildPackages.hspec-discover))
            ];
          };
        };
      };
    }