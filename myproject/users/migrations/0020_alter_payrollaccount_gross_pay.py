# Generated by Django 4.2.14 on 2024-08-31 15:35

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('users', '0019_alter_payrollaccount_department_and_more'),
    ]

    operations = [
        migrations.AlterField(
            model_name='payrollaccount',
            name='gross_pay',
            field=models.CharField(blank=True, max_length=15, null=True),
        ),
    ]