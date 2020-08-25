FROM fearoht/jupyter:latest
RUN pip3 install numpy \
    pandas \
    matplotlib \
    scikit-image \ 
    opencv-python \
    scipy \
    #dlib \
    sklearn \
    seaborn

RUN pip install --upgrade pip
RUN git clone https://github.com/Fearoht/abraxas.git 
RUN cd abraxas \   
    && python3 setup.py bdist_wheel \
    && pip3 install dist/abraxas-0.0.0-py3-none-any.whl
