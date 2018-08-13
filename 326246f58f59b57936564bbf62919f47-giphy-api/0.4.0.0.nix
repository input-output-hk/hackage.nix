{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      buildsample = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "giphy-api";
        version = "0.4.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Pascal Hartig <phartig@rdrei.net>";
      author = "Pascal Hartig";
      homepage = "http://github.com/passy/giphy-api#readme";
      url = "";
      synopsis = "Giphy HTTP API wrapper and CLI search tool.";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "giphy-api" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.network-uri)
          (hsPkgs.aeson)
          (hsPkgs.containers)
          (hsPkgs.microlens)
          (hsPkgs.microlens-th)
          (hsPkgs.mtl)
          (hsPkgs.servant)
          (hsPkgs.servant-client)
          (hsPkgs.transformers)
          (hsPkgs.http-api-data)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
        ];
      };
      exes = {
        "giphy-search" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.network-uri)
          ] ++ pkgs.lib.optionals (_flags.buildsample) [
            (hsPkgs.giphy-api)
            (hsPkgs.lens)
            (hsPkgs.optparse-applicative)
          ];
        };
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.network-uri)
            (hsPkgs.giphy-api)
            (hsPkgs.aeson)
            (hsPkgs.basic-prelude)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.hspec)
            (hsPkgs.lens)
          ];
        };
      };
    };
  }