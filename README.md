Voici la version mise à jour du README avec les informations demandées, prête à être intégrée dans le fichier :

---

## Image Optimization

Images are usually the heaviest components of a web page, both in terms of bytes and number of HTTP requests. Optimizing images on your website is critical to improve your users’ experience, reduce delivery costs and enhance your position in search engine ranking. For example, Google’s Largest Contentful Paint metric in their search ranking algorithm is highly impacted by how much you optimize the images on your website. In the solution, we provide you with a simple and performant solution for image optimization using serverless components such as Amazon CloudFront, Amazon S3 and AWS Lambda.

This fork adds Docker integration to the original solution to simplify deployment across any platform. You can now run this solution in Docker containers, which provides an easy way to test and deploy without needing to configure Node.js or Amazon Cli on your environment.

### Original Repository

This solution is based on the original [image-optimization](https://github.com/aws-samples/image-optimization) repository created by Piotr Witkowski. We would like to acknowledge Piotr for his work on this solution.

---

## How to Use the Dockerized Version

To simplify deployment, this fork introduces Docker support. The steps below show how to use the tool in a Dockerized environment.

### Prerequisites

Ensure that you have Docker installed on your local machine. If you don't have Docker yet, follow the official [Docker installation instructions](https://docs.docker.com/get-docker/).

### Article Guide: Optimizing Images with AWS S3 and CloudFront

In this blog post, I explain how to combine AWS S3 and CloudFront to optimize images for ultra-fast delivery across your website. By integrating AWS Lambda into this architecture, images can be transformed into optimized formats like WebP or AVIF on demand, which drastically improves loading times and SEO performance. The solution leverages serverless technologies, making it highly scalable and cost-efficient.

You can find the complete guide on how to deploy this solution in a Dockerized environment in my blog post titled [Optimisez vos images avec AWS S3 et CloudFront : Guide CDN pour des sites ultra-rapides](https://www.example.com/optimisation-images-aws).

The blog post also describes the following steps for setting up the Docker environment:

1. **Clone the repository**:
   ```bash
   git clone https://github.com/CultureDevOps/docker-aws-image-optimization.git
   ```

2. **Configure your AWS credentials**:  
   In the `aws` directory, configure the `credentials` and `config` files to connect the application to your AWS account.

3. **Install dependencies**:  
   Run the following command to install necessary dependencies:
   ```bash
   docker-compose run --rm image-optimizer npm install
   ```

4. **Deploy the solution**:  
   After configuring your environment, use Docker to provision and deploy the required infrastructure. Run the following commands within the Docker container:
   ```bash
   docker-compose run --rm image-optimizer bash
   ```
   Then:
   ```bash
   cdk bootstrap
   npm run build
   cdk deploy -c S3_IMAGE_BUCKET_NAME=<S3_BUCKET_NAME>
   ```

   You can replace `<S3_BUCKET_NAME>` with your actual S3 bucket name.

5. **Test the optimized images**:  
   Once the deployment is completed, test the optimized image URLs provided by CloudFront as shown in the blog post.

6. **Clean up resources**:  
   If you want to remove the resources created in your AWS account, simply run:
   ```bash
   cdk destroy
   ```

---

## License

This library is licensed under the MIT-0 License. See the LICENSE file.
