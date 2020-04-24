{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "stm-linkedlist"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) Joseph Adams 2011";
      maintainer = "joeyadams3.14159@gmail.com";
      author = "Joey Adams";
      homepage = "";
      url = "";
      synopsis = "Mutable, doubly linked lists for STM";
      description = "Doubly linked lists are often used in imperative languages to maintain a\ncollection of objects such that an object can remove itself easily.  The\nsame idea applies here.  Thanks to STM, these lists can be shared among\nthreads with little effort.\n\nSuppose you have a thread listening for events.  You want to dispatch\nevents to any thread that opts in.  You could write a function that\ninstalls an event handler, performs an action, and removes the handler:\n\n>withEventHandler list handler action =\n>    bracket (atomically \$ LinkedList.append handler list)\n>            (atomically . LinkedList.delete)\n>            (\\_ -> action)\n\nThen, you could have your listener thread dispatch events using a function\nlike this:\n\n>dispatchEvent list event = do\n>    handlers <- atomically \$ LinkedList.toList list\n>    forM_ handlers \$ \\handler -> handler event";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          ];
        buildable = true;
        };
      };
    }