/*
 * workaround, since the cofig seems to be limited to 4089 subclasses wich can be added in on class
 * inhertition seems to skip this issue
 *
 * camouflage: 0=all, 1=woodland, 2=desert
 *
 */

class worlds {
    class altis {
        camouflage = 1;
        class locations {
            #include "altis\locations.hpp"
        };
        class waypoints_1 {
            #include "altis\waypoints.hpp"
        };
        class waypoints_2 : waypoints_1 {
            #include "altis\waypoints2.hpp"
        };
        class waypoints : waypoints_2 {
            #include "altis\waypoints3.hpp"
        };
    };
    class takistan {
        camouflage = 2;
        class locations {
            #include "takistan\locations.hpp"
        };
        class waypoints {
            #include "takistan\waypoints.hpp"
        };
    };
    class pja310 {
        camouflage = 1;
        class locations {
            #include "pja310\locations.hpp"
        };
        class waypoints_1 {
            #include "pja310\waypoints.hpp"
        };
        class waypoints : waypoints_1 {
            #include "pja310\waypoints2.hpp"
        };
    };
    class lingor3 {
        camouflage = 1;
        class locations {
            #include "lingor3\locations.hpp"
        };
        class waypoints {
            #include "lingor3\waypoints.hpp"
        };
    };
	class clafghan {
        camouflage = 0;
        class locations {
            #include "clafghan\locations.hpp"
        };
        class waypoints {
            #include "clafghan\waypoints.hpp"
        };
    };
    class tanoa {
        camouflage = 1;
        class locations {
            #include "tanoa\locations.hpp"
        };
        class waypoints {
            #include "tanoa\waypoints.hpp"
        };
    };
    class malden {
        camouflage = 0;
        class locations {
            #include "malden\locations.hpp"
        };
        class waypoints {
            #include "malden\waypoints.hpp"
        };
    };
    class green_sea {
        camouflage = 1;
        class locations {
            #include "green_sea\locations.hpp"
        };
        class waypoints {
            #include "green_sea\waypoints.hpp"
        };
    };
};
