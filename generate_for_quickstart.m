function generate_for_quickstart(decoderNet, latentDim, classNum)
    drawNum = 5;
    for drawi = 1:drawNum
        randomNoise = dlarray(repmat(randn(1,1,latentDim,1), [1 1 1 classNum]),'SSCB');
        labelarray = dlarray(single(reshape(full(ind2vec(double([1:classNum]), classNum)), [1 1 classNum classNum])), 'SSCB');
        generationSeed = cat(3, randomNoise, labelarray);
        generatedImage = sigmoid(predict(decoderNet, generationSeed));
        generatedImage = extractdata(generatedImage);
        
        f3 = figure;
        figure(f3)
        imshow(imtile(generatedImage, "ThumbnailSize", [100,100], "GridSize", [1 10]), [])
        title("Generated samples of digits")
        drawnow
    end
end