{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.22";
      identifier = { name = "arena"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2015-2016 davean";
      maintainer = "davean <davean@xkcd.com>";
      author = "davean";
      homepage = "";
      url = "";
      synopsis = "A journaled data store";
      description = "@arena@ provides durable storage of data and summaries of that data.\nOn insert, data is written to a journal. Each piece of data is added to a running summary of the current journal. When the summary indicates the correct amount of data has accumulated, the journal data is moved, as a block accompanied by its summary, to long-term storage. The data type, summary type, and accumulation policy are configurable.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.filepath)
          (hsPkgs.semigroups)
          (hsPkgs.mtl)
          (hsPkgs.bytes)
          (hsPkgs.digest)
          (hsPkgs.directory)
          (hsPkgs.safe)
          (hsPkgs.containers)
          (hsPkgs.unix)
          (hsPkgs.persistent-vector)
          ];
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.arena)
            (hsPkgs.directory)
            (hsPkgs.mtl)
            (hsPkgs.semigroups)
            ];
          };
        "example" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.arena)
            (hsPkgs.bytes)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.mtl)
            (hsPkgs.semigroups)
            ];
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.arena)
            (hsPkgs.directory)
            (hsPkgs.criterion)
            (hsPkgs.mtl)
            (hsPkgs.semigroups)
            ];
          };
        };
      };
    }