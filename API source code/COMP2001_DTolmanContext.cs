using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;

#nullable disable

namespace RESTful_API
{
    public partial class COMP2001_DTolmanContext : DbContext
    {
        public COMP2001_DTolmanContext()
        {
        }

        public COMP2001_DTolmanContext(DbContextOptions<COMP2001_DTolmanContext> options)
            : base(options)
        {
        }

        
        public virtual DbSet<Password> Passwords { get; set; }
        public virtual DbSet<Session> Sessions { get; set; }
        public virtual DbSet<User> Users { get; set; }
        

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see http://go.microsoft.com/fwlink/?LinkId=723263.
                optionsBuilder.UseSqlServer("Server=socem1.uopnet.plymouth.ac.uk;Database=COMP2001_DTolman;User Id=DTolman; Password=KotL264*");
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.HasAnnotation("Relational:Collation", "Latin1_General_CI_AS");

         

            modelBuilder.Entity<Password>(entity =>
            {
                entity.ToTable("password");

                entity.Property(e => e.PasswordId).HasColumnName("passwordId");

                entity.Property(e => e.ChangeDate)
                    .HasColumnType("datetime")
                    .HasColumnName("changeDate");

                entity.Property(e => e.PreviousPassword)
                    .HasMaxLength(35)
                    .IsUnicode(false)
                    .HasColumnName("previousPassword");
            });

            modelBuilder.Entity<Session>(entity =>
            {
                entity.ToTable("session");

                entity.Property(e => e.SessionId).HasColumnName("sessionId");

                entity.Property(e => e.SessionDate)
                    .HasColumnType("date")
                    .HasColumnName("sessionDate");

                entity.Property(e => e.SessionTime)
                    .HasColumnType("datetime")
                    .HasColumnName("sessionTime");
            });

            modelBuilder.Entity<User>(entity =>
            {
                entity.ToTable("users");

                entity.Property(e => e.UserId).HasColumnName("userId");

                entity.Property(e => e.Email)
                    .IsRequired()
                    .HasMaxLength(60)
                    .IsUnicode(false);

                entity.Property(e => e.FirstName)
                    .IsRequired()
                    .HasMaxLength(35)
                    .IsUnicode(false)
                    .HasColumnName("firstName");

                entity.Property(e => e.LastName)
                    .IsRequired()
                    .HasMaxLength(35)
                    .IsUnicode(false)
                    .HasColumnName("lastName");

                entity.Property(e => e.UserPassword)
                    .IsRequired()
                    .HasMaxLength(35)
                    .IsUnicode(false)
                    .HasColumnName("userPassword");
            });

         

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}
