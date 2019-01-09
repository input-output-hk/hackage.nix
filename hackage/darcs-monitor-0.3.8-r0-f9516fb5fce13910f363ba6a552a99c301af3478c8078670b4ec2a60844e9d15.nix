{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { splitbase = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "darcs-monitor"; version = "0.3.8"; };
      license = "LicenseRef-GPL";
      copyright = "2007 Antti-Juhani Kaijanaho\n2007 Benja Fallenstein\n2007 Benjamin Franksen";
      maintainer = "Marco Túlio Gontijo e Silva <marcot@debian.org>";
      author = "Antti-Juhani Kaijanaho";
      homepage = "http://wiki.darcs.net/RelatedSoftware/DarcsMonitor";
      url = "http://hackage.haskell.org/packages/darcs-monitor/0.3.8/darcs-monitor-0.3.8.tar.gz";
      synopsis = "Darcs repository monitor (sends email)";
      description = "Darcs-monitor will send email to a specified recipient\nabout new changes added to a specific darcs repository. It can be run\nas an apply posthook (resulting in near-instantaneous \"push\"\nemails), or periodically from Cron, or occasionally by hand, whatever\nseems most convenient.";
      buildType = "Simple";
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