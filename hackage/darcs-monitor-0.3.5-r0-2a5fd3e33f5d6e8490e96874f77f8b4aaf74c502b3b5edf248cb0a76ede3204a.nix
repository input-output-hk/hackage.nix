{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { splitbase = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "darcs-monitor"; version = "0.3.5"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "antti-juhani@kaijanaho.fi";
      author = "Antti-Juhani Kaijanaho";
      homepage = "";
      url = "";
      synopsis = "Darcs repository monitor (sends email)";
      description = "Darcs-monitor will send email to a specified recipient\nabout new changes added to a specific darcs repository. It can be run\nas an apply posthook (resulting in near-instantaneous \"push\"\nemails), or periodically from Cron, or occasionally by hand, whatever\nseems most convenient.";
      buildType = "Custom";
      };
    components = {
      exes = {
        "darcs-monitor" = {
          depends = [ (hsPkgs.mtl) (hsPkgs.HaXml) ] ++ (if flags.splitbase
            then [
              (hsPkgs.base)
              (hsPkgs.containers)
              (hsPkgs.directory)
              (hsPkgs.process)
              ]
            else [ (hsPkgs.base) ]);
          };
        };
      };
    }