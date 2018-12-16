{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      buildsample = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "giphy-api";
        version = "0.6.0.1";
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
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.http-api-data)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.microlens)
          (hsPkgs.microlens-th)
          (hsPkgs.mtl)
          (hsPkgs.network-uri)
          (hsPkgs.servant)
          (hsPkgs.servant-client)
          (hsPkgs.text)
          (hsPkgs.transformers)
        ];
      };
      exes = {
        "giphy-search" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.network-uri)
            (hsPkgs.text)
          ] ++ pkgs.lib.optionals (flags.buildsample) [
            (hsPkgs.giphy-api)
            (hsPkgs.lens)
            (hsPkgs.optparse-applicative)
          ];
        };
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.basic-prelude)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.giphy-api)
            (hsPkgs.hspec)
            (hsPkgs.lens)
            (hsPkgs.network-uri)
            (hsPkgs.text)
          ];
        };
      };
    };
  }