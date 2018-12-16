{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "laborantin-hs";
        version = "0.1.3.0";
      };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "lucas@dicioccio.fr";
      author = "lucas dicioccio";
      homepage = "https://github.com/lucasdicioccio/laborantin-hs";
      url = "";
      synopsis = "an experiment management framework";
      description = "Laborantin is a framework and DSL to run and manage results from scientific\nexperiments. Good targets for Laborantin are experiments that you can\nrun /offline/ such as benchmark and batch analytics.\n\nWriting experiments with Laborantin has at least two advantages over\nrolling your own scripts.  First, Laborantin standardizes the workflow of your\nexperimentations.  There is one-way to describe what a project can do, what\nexperiments where already run, how to delete files corresponding to a specific\nexperiment etc.  Second, Laborantin builds on years of experience running\nexperiments. Using Laborantin    should alleviates common pain points such as\nquerying for experiments, managing dependencies between results\n\nLaborantin's DSL lets you express experiment parameters,\nsetup, teardown, and recovery hooks in a systematic way.\nIn addition, this DSL let you express dependencies on your\nexperiments so that you can run prior experiments or data analyses.\n\nLaborantin comes with a default backend that stores\nexperiment results in a filesystem-hierarchy. Laborantin\nalso comes with a default command-line that let you\nspecify which experiments to run, analyze, or delete.\n\n> ping :: ScenarioDescription EnvIO\n> ping = scenario \"ping\" \$ do\n>   describe \"ping to a remote server\"\n>   parameter \"destination\" \$ do\n>     describe \"a destination server (host or ip)\"\n>     values [str \"example.com\", str \"probecraft.net\"]\n>   parameter \"packet-size\" \$ do\n>     describe \"packet size in bytes\"\n>     values [num 50, num 1500]\n>   run \$ do\n>     (StringParam srv) <- param \"destination\"\n>     (StringParam ps) <- param \"packet-size\"\n>     liftIO (executePingCommand srv ps) >>= writeResult \"raw-result\"\n>     where executePingCommand :: Text -> Rational -> IO (Text)\n>           executePingCommand host packetSize = ...\n>\n> main :: IO ()\n> main = defaultMain [ping]";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.aeson)
          (hsPkgs.uuid)
          (hsPkgs.directory)
          (hsPkgs.random)
          (hsPkgs.hslogger)
          (hsPkgs.cmdlib)
          (hsPkgs.split)
          (hsPkgs.time)
          (hsPkgs.parsec)
          (hsPkgs.old-locale)
        ];
      };
      exes = {
        "labor-example" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.transformers)
            (hsPkgs.mtl)
            (hsPkgs.containers)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.aeson)
            (hsPkgs.uuid)
            (hsPkgs.directory)
            (hsPkgs.random)
            (hsPkgs.hslogger)
            (hsPkgs.cmdlib)
            (hsPkgs.split)
            (hsPkgs.laborantin-hs)
          ];
        };
      };
    };
  }