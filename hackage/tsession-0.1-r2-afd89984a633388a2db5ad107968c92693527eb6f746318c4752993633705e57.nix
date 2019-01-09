{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "tsession"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "2014 Florian Micheler";
      maintainer = "Florian Micheler <hackage@micheler.net>";
      author = "Florian Micheler <hackage@micheler.net>";
      homepage = "";
      url = "";
      synopsis = "A Transaction Framework for Web Applications";
      description = "The concept of this web transaction framework is influenced by sessions, transactions and software transactional memory.\nTo web-developers it offers  sessions with integrated transaction management that has an included server-side storage of key-value pairs. The transactions can be spanned over multiple web requests and only affect the database when a commit is instructed.\nAdditionally, the sessions have access to the (not yet committed) key-value pairs and the status (e.g., the last requested page) of all other sessions that are active. As sessions have to be canceled after a given timeout, the framework has a garbage collector that safely cleans up the timed out sessions. The framework introduces a monad which encapsulates all the logic of the transactions and frees them of side effects. This is a concept known from the STM--monad and like in STM, the transactions cannot dead-lock each other.\n\nFor more information check my master thesis:\n\n<http://stud.micheler.net/master.pdf>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
          ];
        };
      };
    }