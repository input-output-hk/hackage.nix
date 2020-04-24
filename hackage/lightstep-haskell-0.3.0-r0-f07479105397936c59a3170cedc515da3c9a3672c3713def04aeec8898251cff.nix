{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.4";
      identifier = { name = "lightstep-haskell"; version = "0.3.0"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "Dmitry Ivanov <ethercrow@gmail.com>";
      author = "";
      homepage = "https://github.com/ethercrow/lightstep-haskell#readme";
      url = "";
      synopsis = "LightStep OpenTracing client library";
      description = "LightStep OpenTracing client library. Uses GRPC transport via proto-lens.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."chronos" or ((hsPkgs.pkgs-errors).buildDepError "chronos"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."safe-exceptions" or ((hsPkgs.pkgs-errors).buildDepError "safe-exceptions"))
          (hsPkgs."http2-client" or ((hsPkgs.pkgs-errors).buildDepError "http2-client"))
          (hsPkgs."http2-client-grpc" or ((hsPkgs.pkgs-errors).buildDepError "http2-client-grpc"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."proto-lens" or ((hsPkgs.pkgs-errors).buildDepError "proto-lens"))
          (hsPkgs."proto-lens-runtime" or ((hsPkgs.pkgs-errors).buildDepError "proto-lens-runtime"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
          (hsPkgs."wai" or ((hsPkgs.pkgs-errors).buildDepError "wai"))
          ];
        buildable = true;
        };
      exes = {
        "lightstep-haskell-example" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
            (hsPkgs."http2-client" or ((hsPkgs.pkgs-errors).buildDepError "http2-client"))
            (hsPkgs."lightstep-haskell" or ((hsPkgs.pkgs-errors).buildDepError "lightstep-haskell"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = true;
          };
        "lightstep-haskell-wai-example" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."lightstep-haskell" or ((hsPkgs.pkgs-errors).buildDepError "lightstep-haskell"))
            (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."wai" or ((hsPkgs.pkgs-errors).buildDepError "wai"))
            (hsPkgs."warp" or ((hsPkgs.pkgs-errors).buildDepError "warp"))
            ];
          buildable = true;
          };
        "lightstep-haskell-req-example" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."lightstep-haskell" or ((hsPkgs.pkgs-errors).buildDepError "lightstep-haskell"))
            (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."req" or ((hsPkgs.pkgs-errors).buildDepError "req"))
            ];
          buildable = true;
          };
        };
      };
    }