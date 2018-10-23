{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      documentation = true;
    };
    package = {
      specVersion = "1.18";
      identifier = {
        name = "opentok";
        version = "0.0.3";
      };
      license = "MIT";
      copyright = "2018 Aaron Rice";
      maintainer = "adrice727@gmail.com";
      author = "Aaron Rice";
      homepage = "https://github.com/adrice727/opentok-haskell";
      url = "";
      synopsis = "An OpenTok SDK for Haskell";
      description = "\nSession creation, token generation, and archive management for the OpenTok platform.";
      buildType = "Simple";
    };
    components = {
      "opentok" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base-compat)
          (hsPkgs.aeson)
          (hsPkgs.aeson-casing)
          (hsPkgs.aeson-compat)
          (hsPkgs.base64-string)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.convertible)
          (hsPkgs.either)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.http-conduit)
          (hsPkgs.http-types)
          (hsPkgs.iproute)
          (hsPkgs.jose)
          (hsPkgs.lens)
          (hsPkgs.monad-time)
          (hsPkgs.unordered-containers)
          (hsPkgs.SHA)
          (hsPkgs.strings)
          (hsPkgs.uuid)
          (hsPkgs.utf8-string)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
        ] ++ pkgs.lib.optional (flags.documentation) (hsPkgs.hscolour);
      };
    };
  }