{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "clckwrks-plugin-bugs";
        version = "0.3.0";
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
      "clckwrks-plugin-bugs" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.acid-state)
          (hsPkgs.attoparsec)
          (hsPkgs.blaze-html)
          (hsPkgs.clckwrks)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.gd)
          (hsPkgs.happstack-authenticate)
          (hsPkgs.happstack-server)
          (hsPkgs.happstack-hsp)
          (hsPkgs.hsp)
          (hsPkgs.ixset)
          (hsPkgs.magic)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.reform)
          (hsPkgs.reform-happstack)
          (hsPkgs.reform-hsp)
          (hsPkgs.safecopy)
          (hsPkgs.time)
          (hsPkgs.text)
          (hsPkgs.web-plugins)
          (hsPkgs.web-routes)
          (hsPkgs.web-routes-th)
        ];
      };
    };
  }