# Image-Enhancement-MATLAB
Enhance an image, the gray-scale image brainMRI.jpg, using intensity transformation in MATLAB.

# <sub> Original Image (L) and Enhanced Image (R)
  <img src="https://user-images.githubusercontent.com/97911922/150254877-a3d71a28-0978-4ab7-a704-2dae14854984.jpg" width="49%" height="49%"> <img src="https://user-images.githubusercontent.com/97911922/150261516-9e7da792-62c1-455b-9eb8-1a81602e5b6b.png" width="50%" height="50%">

# <sub> Enhancement Results
<img src="https://user-images.githubusercontent.com/97911922/150262395-d2dbe396-753b-4cd0-82f2-918d1222e8fb.png" width="100%" height="100%">
  <img src="https://user-images.githubusercontent.com/97911922/150262400-49ff6abc-1577-463d-934a-28c19d3e17d6.png" width="100%" height="100%">
  
# <sub> Comments
The original image brainMRI.jpg is gray and shady, it’s hard to obverse the details of the brain and distinguish each part of the brain. Overall, the quality was not satisfied which exactly the reason we need to enhance the image to improve the performance. We have implemented six trials to obtain the corresponding enhanced images, in which we assumed the value for γ is 0.5, 0.8, 1, 5, 10, and 15. We observed that when γ = 15, the quality of the enhanced image is relatively better than the original image.

If we use the enhanced image (γ = 10) to compare with the original image, we found that we have already successfully improved the performance of the images. The quality of the image has been improved and became better. The color was not too dark or too bright to observe and can be easy to distinguish the details of the brain as for the medical treatment.

After we plotted the histograms using the function of 'imhist', we found there were two peaks in the diagram which means the relationship between the value for 𝛾 and the quality of the image is not linear. For instance, the larger value for 𝛾, it is not the better enhanced we received, which theory has been proved from the experiment.
  
