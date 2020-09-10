docker run --rm --name datascience -p 8888:8888 -e JUPYTER_ENABLE_LAB=yes -v "%CD%:/home/jovyan/work" datascience
pause > nul