{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { use_hutt = false; useless = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "mbox-tools"; version = "0.2.0.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) Nicolas Pouillard";
      maintainer = "Nicolas Pouillard <nicolas.pouillard@gmail.com>";
      author = "Nicolas Pouillard";
      homepage = "https://github.com/np/mbox-tools";
      url = "";
      synopsis = "A collection of tools to process mbox files";
      description = "A collection of tools to process mbox files";
      buildType = "Simple";
      };
    components = {
      exes = {
        "mbox-counting" = {
          depends = [ (hsPkgs.base) (hsPkgs.bytestring) (hsPkgs.codec-mbox) ];
          };
        "mbox-average-size" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.codec-mbox)
            (hsPkgs.fclabels)
            ];
          };
        "mbox-quoting" = {
          depends = [ (hsPkgs.base) (hsPkgs.bytestring) (hsPkgs.codec-mbox) ];
          };
        "redact-mbox" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.codec-mbox)
            (hsPkgs.mtl)
            (hsPkgs.random)
            ];
          };
        "mbox-list" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.codec-mbox)
            (hsPkgs.parsec)
            (hsPkgs.hsemail)
            (hsPkgs.pureMD5)
            (hsPkgs.fclabels)
            (hsPkgs.mtl)
            ];
          };
        "mbox-pick" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.codec-mbox)
            (hsPkgs.parsec)
            (hsPkgs.hsemail)
            (hsPkgs.pureMD5)
            (hsPkgs.fclabels)
            (hsPkgs.mtl)
            ];
          };
        "mbox-partition" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.codec-mbox)
            (hsPkgs.parsec)
            (hsPkgs.hsemail)
            (hsPkgs.pureMD5)
            (hsPkgs.fclabels)
            (hsPkgs.mtl)
            (hsPkgs.containers)
            ];
          };
        "mbox-grep" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.codec-mbox)
            (hsPkgs.parsec)
            (hsPkgs.hsemail)
            (hsPkgs.pureMD5)
            (hsPkgs.fclabels)
            (hsPkgs.mtl)
            ] ++ (pkgs.lib).optional (flags.use_hutt) (hsPkgs.hutt);
          };
        "split-mbox" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.codec-mbox)
            (hsPkgs.parsec)
            (hsPkgs.hsemail)
            (hsPkgs.pureMD5)
            (hsPkgs.fclabels)
            (hsPkgs.mtl)
            ];
          };
        "mbox-iter" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.codec-mbox)
            (hsPkgs.parsec)
            (hsPkgs.hsemail)
            (hsPkgs.pureMD5)
            (hsPkgs.fclabels)
            (hsPkgs.mtl)
            (hsPkgs.process)
            ];
          };
        "mbox-from-files" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.codec-mbox)
            (hsPkgs.parsec)
            (hsPkgs.hsemail)
            (hsPkgs.pureMD5)
            (hsPkgs.fclabels)
            (hsPkgs.mtl)
            ];
          };
        };
      };
    }