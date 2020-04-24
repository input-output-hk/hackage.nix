{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "inspector-wrecker"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 skedge.me";
      maintainer = "jonathangfischoff@gmail.com";
      author = "Jonathan Fischoff";
      homepage = "https://github.com/skedgeme/inspector-wrecker#readme";
      url = "";
      synopsis = "Create benchmarks from the HAR files";
      description = "inspector-wrecker is a library and executable for creating HTTP benchmarks from\na HAR file dump from Chrome's Inspector.\nThe executable exposes the wrecker options and additionally takes in a path to\na HAR file.\nThe library exposes a single function, 'runHar', which produces a function\n'wrecker''s library can use for benchmarks.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."wrecker" or ((hsPkgs.pkgs-errors).buildDepError "wrecker"))
          (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
          (hsPkgs."http-client" or ((hsPkgs.pkgs-errors).buildDepError "http-client"))
          (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."case-insensitive" or ((hsPkgs.pkgs-errors).buildDepError "case-insensitive"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."http-client-tls" or ((hsPkgs.pkgs-errors).buildDepError "http-client-tls"))
          (hsPkgs."connection" or ((hsPkgs.pkgs-errors).buildDepError "connection"))
          (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
          ];
        buildable = true;
        };
      exes = {
        "inspector-wrecker-exe" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."inspector-wrecker" or ((hsPkgs.pkgs-errors).buildDepError "inspector-wrecker"))
            ];
          buildable = true;
          };
        };
      tests = {
        "inspector-wrecker-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."inspector-wrecker" or ((hsPkgs.pkgs-errors).buildDepError "inspector-wrecker"))
            ];
          buildable = true;
          };
        };
      };
    }