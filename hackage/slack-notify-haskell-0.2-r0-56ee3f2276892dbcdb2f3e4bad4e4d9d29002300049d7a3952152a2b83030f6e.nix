{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "slack-notify-haskell"; version = "0.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "t.t.mc1192.sf@gmail.com";
      author = "tattsun";
      homepage = "https://github.com/tattsun/slack-notify-haskell";
      url = "";
      synopsis = "Slack notifier for Haskell project.";
      description = "Slack notifier for Haskell project.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.network)
          (hsPkgs.text)
          ];
        };
      exes = {
        "example" = {
          depends = [ (hsPkgs.base) (hsPkgs.slack-notify-haskell) ];
          };
        };
      };
    }