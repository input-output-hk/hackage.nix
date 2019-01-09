{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "DAG-Tournament"; version = "0.1"; };
      license = "LicenseRef-GPL";
      copyright = "Joachim Breitner 2009";
      maintainer = "Joachim Breitner <mail@joachim-breitner.de>";
      author = "Joachim Breitner <mail@joachim-breitner.de>";
      homepage = "";
      url = "";
      synopsis = "Real-Time Game Tournament Evaluator";
      description = "DAG-Tournament, where DAG stands for directed acyclic graph, is a graphical\nprogram to manage an informal tournament of games such as foosball. It is\ndesigned for open-for-all tournaments without schedule, for example to\nrecord all games as they happen in the free time program of a serious\nevent, such as a conference.\n\nGames can be entered as they happen. The program does not generate a\ncomplete ranking, but only visualizes what it knows about who is better\nthan who based on direct comparison, or a path of direct comparisons.\nCycles are broken at the edge of least significance. The visualisation is\nbaesd on springs and forces and updated in real time, already producing\nentertaining effects.\n\nDAG-Tournaments supports more than one tournament at the same time, e.g.\nfoosball and pool billard, and can switch between the two rankings with one\nkeypress, again showing an entaining shuffling of nodes until a stable\nstate is reached again.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "DAG-Tournament" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.mtl)
            (hsPkgs.time)
            (hsPkgs.containers)
            (hsPkgs.gtk)
            (hsPkgs.cairo)
            ];
          };
        };
      };
    }