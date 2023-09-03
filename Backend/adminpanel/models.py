from django.db import models
# from django.utils import timezone

class GlobalSettings(models.Model):
    SiteName = models.CharField(max_length=100)
    SiteContact = models.CharField(max_length=100)
    SiteEmail = models.EmailField()
    SiteAddress = models.CharField(max_length=500)
    Sitedescription = models.CharField(max_length=500)
    Sitelicence = models.CharField(max_length=300)
    Sitetwitterlink = models.CharField(max_length=300)
    Sitefacebooklink = models.CharField(max_length=300)
    Sitelinkdinlink = models.CharField(max_length=300)
    Siteinstagram = models.CharField(max_length=300)
    Siteyoutubelink = models.CharField(max_length=300)
    Sitefax = models.CharField(max_length=300,null=True)
    SiteBox = models.CharField(max_length=300,null=True)
    logo = models.ImageField(upload_to="Global/",max_length=200, null=True, default=None)
    back_image = models.ImageField(upload_to="Global/",null=True)
    brochure = models.FileField(upload_to="brochure/",null=True)
    brochure_name = models.CharField(max_length=100,null=True)


    def __str__(self):
        return self.SiteName

class ContactUS(models.Model):
    name = models.CharField(max_length=50)
    email = models.CharField(max_length=50)
    subject = models.CharField(max_length=50)
    message = models.TextField(null=True)
    
    def __str__(self):
        return self.name
    
    

class Navigation(models.Model):
    PAGE_TYPE = (
        ('Home', 'Home'),('Home/About_1','Home/About_1'),('Slider','Slider'),('Home/About', 'Home/About'),
        ('Group', 'Group'),('Work_1', 'Work_1'),('Work_2', 'Work_2'),('We', 'We'),('Recruit', 'Recruit'),
        ('Recruit_1', 'Recruit_1'),('Process', 'Process'),('Clients', 'Clients'),('Clients_1', 'Clients_1'),
        ('About Company','About Company'),('Our Message','Our Message'),('Our Commitment','Our Commitment'),
        ('Vision','Vision'),('Mission','Mission'),('Organizational','Organizational'),('Registration','Registration'),
        ('Registration_1','Registration_1'),('UNSKILLED','UNSKILLED'),('SKILLED','SKILLED'),('SEMISKILLED','SEMISKILLED'),
        ('SKILLED 1','SKILLED 1'),('SKILLED 2','SKILLED 2'),('SKILLED 3','SKILLED 3'),('Demand Letter','Demand Letter'),
        ('Procedure','Procedure'),('Procedure_1','Procedure_1'),('Documents', 'Documents'),('Newspaper', 'Newspaper'),
        ('Newspaper_1', 'Newspaper_1'),('Gallery', 'Gallery'),('Gallery_1', 'Gallery_1'),('Contact', 'Contact'),
    )

    STATUS = (
        ('Publish', 'Publish'),
        ('Draft', 'Draft')
    )
    name = models.CharField(max_length=100, null=False)
    caption = models.CharField(max_length=100)
    status = models.CharField(choices=STATUS, max_length=50)
    position = models.IntegerField()
    page_type = models.CharField(choices=PAGE_TYPE, null=True, blank=True, max_length=50)
    title = models.CharField(max_length=200)
    short_desc = models.TextField(null=True)
    desc = models.TextField(null=True)
    bannerimage = models.ImageField(upload_to="about/",null=True)
    meta_title = models.CharField(max_length=100, null=True)
    meta_keyword = models.CharField(max_length=100, null=True)
    icon_image = models.TextField(null=True)
    slider_image = models.ImageField(upload_to="about/", null=True)
    Parent = models.ForeignKey('self', related_name="childs", on_delete=models.CASCADE, null=True, blank=True)
    brochure = models.FileField(upload_to="brochure/",null=True)

    def __str__(self):
        return self.name


