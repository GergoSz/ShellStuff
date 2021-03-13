#include "callbacks.h"
#include "init.h"

#include <GL/glut.h>

#include <stdio.h>

/**
 * Set the callbacks for GLUT.
 */
void set_callbacks()
{
    glutDisplayFunc(display);
    glutReshapeFunc(reshape);
    glutPassiveMotionFunc(motion);
    glutKeyboardFunc(keyboard);
    glutMouseFunc(mouse);
    glutIdleFunc(idle);
}

/**
 * Main function
 */
int main(int argc, char* argv[])
{
    int window;
	
    glutInit(&argc, argv);

    glutInitWindowSize(1600, 900);     
    glutInitDisplayMode(GLUT_RGBA | GLUT_DOUBLE | GLUT_DEPTH);

    window = glutCreateWindow("Edited Simplified Pong Game");
    glutSetWindow(window);

    init_opengl();
    set_callbacks();

    glutMainLoop();

    return 0;
}

