{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      use_hutt = false;
      useless = false;
    };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "mbox-tools";
        version = "0.2.0.1";
      };
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
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.bytestring)
          (hsPkgs.parsec)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
          (hsPkgs.fclabels)
          (hsPkgs.pureMD5)
          (hsPkgs.codec-mbox)
          (hsPkgs.hsemail)
        ];
      };
      exes = {
        "mbox-counting" = {};
        "mbox-average-size" = {};
        "mbox-quoting" = {};
        "redact-mbox" = {
          depends  = [ (hsPkgs.random) ];
        };
        "mbox-list" = {};
        "mbox-pick" = {};
        "mbox-partition" = {};
        "mbox-grep" = {
          depends  = pkgs.lib.optional (flags.use_hutt) (hsPkgs.hutt);
        };
        "split-mbox" = {};
        "mbox-iter" = {
          depends  = [ (hsPkgs.process) ];
        };
        "mbox-from-files" = {};
      };
    };
  }