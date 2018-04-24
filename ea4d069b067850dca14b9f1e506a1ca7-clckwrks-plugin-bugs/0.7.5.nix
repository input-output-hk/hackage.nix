{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      network-uri = true;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "clckwrks-plugin-bugs";
          version = "0.7.5";
        };
        license = "BSD-3-Clause";
        copyright = "2012 Jeremy Shaw, SeeReason Partners LLC";
        maintainer = "Jeremy Shaw <jeremy@n-heptane.com>";
        author = "Jeremy Shaw";
        homepage = "http://clckwrks.com/";
        url = "";
        synopsis = "bug tracking plugin for clckwrks";
        description = "";
        buildType = "Custom";
      };
      components = {
        clckwrks-plugin-bugs = {
          depends  = [
            hsPkgs.base
            hsPkgs.acid-state
            hsPkgs.attoparsec
            hsPkgs.clckwrks
            hsPkgs.clckwrks-plugin-page
            hsPkgs.cereal
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.happstack-authenticate
            hsPkgs.happstack-server
            hsPkgs.happstack-hsp
            hsPkgs.hsp
            hsPkgs.ixset
            hsPkgs.mtl
            hsPkgs.reform
            hsPkgs.reform-happstack
            hsPkgs.reform-hsp
            hsPkgs.safecopy
            hsPkgs.time
            hsPkgs.text
            hsPkgs.web-plugins
            hsPkgs.web-routes
            hsPkgs.web-routes-th
          ] ++ (if _flags.network-uri
            then [
              hsPkgs.network
              hsPkgs.network-uri
            ]
            else [ hsPkgs.network ]);
          build-tools = [ hsPkgs.hsx2hs ];
        };
      };
    }