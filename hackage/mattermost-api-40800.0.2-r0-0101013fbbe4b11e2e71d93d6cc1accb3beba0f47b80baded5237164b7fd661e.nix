{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { build-examples = false; };
    package = {
      specVersion = "1.18";
      identifier = { name = "mattermost-api"; version = "40800.0.2"; };
      license = "BSD-3-Clause";
      copyright = "2016-2017 Jason Dagit, Getty Ritter, Jonathan Daugherty";
      maintainer = "dagitj@gmail.com";
      author = "Jason Dagit";
      homepage = "";
      url = "";
      synopsis = "Client API for Mattermost chat system";
      description = "Client API for Mattermost chat system";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.websockets)
          (hsPkgs.stm)
          (hsPkgs.aeson)
          (hsPkgs.connection)
          (hsPkgs.memory)
          (hsPkgs.resource-pool)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.process)
          (hsPkgs.HTTP)
          (hsPkgs.network-uri)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.unordered-containers)
          (hsPkgs.hashable)
          (hsPkgs.containers)
          (hsPkgs.gitrev)
          (hsPkgs.template-haskell)
          (hsPkgs.microlens)
          (hsPkgs.microlens-th)
          (hsPkgs.pretty-show)
          ];
        };
      exes = {
        "mm-get-teams" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.mattermost-api)
            (hsPkgs.aeson)
            (hsPkgs.text)
            (hsPkgs.connection)
            (hsPkgs.process)
            (hsPkgs.unordered-containers)
            (hsPkgs.pretty-show)
            ];
          };
        "mm-get-channels" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.mattermost-api)
            (hsPkgs.aeson)
            (hsPkgs.text)
            (hsPkgs.connection)
            (hsPkgs.process)
            (hsPkgs.unordered-containers)
            (hsPkgs.pretty-show)
            ];
          };
        "mm-get-posts" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.mattermost-api)
            (hsPkgs.aeson)
            (hsPkgs.text)
            (hsPkgs.connection)
            (hsPkgs.process)
            (hsPkgs.unordered-containers)
            (hsPkgs.pretty-show)
            ];
          };
        "mm-make-post" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.mattermost-api)
            (hsPkgs.aeson)
            (hsPkgs.text)
            (hsPkgs.connection)
            (hsPkgs.process)
            (hsPkgs.unordered-containers)
            (hsPkgs.pretty-show)
            ];
          };
        "mm-get-websocket-connection" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.mattermost-api)
            (hsPkgs.aeson)
            (hsPkgs.text)
            (hsPkgs.connection)
            (hsPkgs.process)
            (hsPkgs.unordered-containers)
            (hsPkgs.pretty-show)
            ];
          };
        "mm-show-raw-events" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.mattermost-api)
            (hsPkgs.aeson)
            (hsPkgs.text)
            (hsPkgs.connection)
            (hsPkgs.process)
            (hsPkgs.unordered-containers)
            (hsPkgs.pretty-show)
            ];
          };
        };
      tests = {
        "test-mm-api" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.stm)
            (hsPkgs.mattermost-api)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.HUnit)
            (hsPkgs.text)
            (hsPkgs.pretty-show)
            (hsPkgs.unordered-containers)
            (hsPkgs.containers)
            (hsPkgs.aeson)
            ];
          };
        };
      };
    }