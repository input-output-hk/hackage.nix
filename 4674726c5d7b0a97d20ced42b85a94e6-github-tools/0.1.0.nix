{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "github-tools";
        version = "0.1.0";
      };
      license = "AGPL-3.0-only";
      copyright = "";
      maintainer = "iphydf@users.noreply.github.com";
      author = "iphydf";
      homepage = "https://toktok.github.io/";
      url = "";
      synopsis = "Various Github helper utilities.";
      description = "- Pull Request status tool.\n- Change log generator.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "pull-status" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.exceptions)
            (hsPkgs.github)
            (hsPkgs.groom)
            (hsPkgs.html)
            (hsPkgs.http-client)
            (hsPkgs.http-client-tls)
            (hsPkgs.monad-parallel)
            (hsPkgs.tabular)
            (hsPkgs.tagsoup)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.vector)
          ];
        };
        "changelog" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.exceptions)
            (hsPkgs.github)
            (hsPkgs.groom)
            (hsPkgs.http-client)
            (hsPkgs.http-client-tls)
            (hsPkgs.text)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }