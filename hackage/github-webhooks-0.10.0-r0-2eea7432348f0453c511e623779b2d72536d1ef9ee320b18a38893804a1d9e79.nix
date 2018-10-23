{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "github-webhooks";
        version = "0.10.0";
      };
      license = "MIT";
      copyright = "(c) 2017-2018 OnRock Engineering";
      maintainer = "Kyle Van Berendonck <foss@onrock.engineering>";
      author = "Kyle Van Berendonck <kyle.vanberendonck@onrock.engineering>,\nChristian Sakai <christianmsakai@gmail.com>,\nThomas DuBuisson <thomas.dubuisson@gmail.com>,\nRob Berry";
      homepage = "https://github.com/onrock-eng/github-webhooks#readme";
      url = "";
      synopsis = "Aeson instances for GitHub Webhook payloads.";
      description = "Complete instances for decoding GitHub Webhook payloads (using @aeson@). See the README at <https://github.com/onrock-eng/github-webhooks#readme> for examples.";
      buildType = "Simple";
    };
    components = {
      "github-webhooks" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.base16-bytestring)
          (hsPkgs.bytestring)
          (hsPkgs.cryptonite)
          (hsPkgs.deepseq)
          (hsPkgs.deepseq-generics)
          (hsPkgs.memory)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.vector)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.github-webhooks)
            (hsPkgs.hspec)
            (hsPkgs.text)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }